using System.IO.Compression;
using RoadCraft_Vehicle_Editorv2.Helper;
using RoadCraft_Vehicle_Editorv2.Parser;
using RoadCraft_Vehicle_Editorv2.Properties;

namespace RoadCraft_Vehicle_Editorv2
{
    public partial class Form1 : Form
    {
        const string RelativePakPath = @"root\paks\client\default\default_other.pak";
        string? gameDir;
        Button btnGameDir;
        readonly HelperBackend backend = new();
        CheckBox checkBoxShowGears;

        public Form1()
        {
            InitializeComponent();
            AutoScaleMode = AutoScaleMode.Dpi;

            listBox1.DrawMode = DrawMode.OwnerDrawFixed;
            listBox1.DrawItem += ListBox1_DrawItem;

            checkBoxShowGears = new CheckBox
            {
                Text = "Show Gear Options",
                AutoSize = true,
                Location = new Point(10, 10)
            };
            checkBoxShowGears.CheckedChanged += (s, e) => RefreshPropertyPanel();
            Controls.Add(checkBoxShowGears);

            btnGameDir = new Button
            {
                Text = "Game directory path",
                AutoSize = true,
                Location = new Point(10, 40)
            };
            btnGameDir.Click += BtnGameDir_Click;
            Controls.Add(btnGameDir);

            gameDir = Settings.Default.GameDirPath;
            if (!string.IsNullOrEmpty(gameDir) && File.Exists(Path.Combine(gameDir, RelativePakPath)))
                BuildVehicleList();
            int top = btnGameDir.Bottom + 8;
            listBox1.Location = new Point(12, top);
            panel1.Location = new Point(291, top);
            int margin = 35;
            listBox1.Height = ClientSize.Height - top - margin;
            panel1.Height = listBox1.Height;
            panel1.Width = ClientSize.Width - panel1.Left - 12;
            save.Location = new Point(ClientSize.Width - save.Width - 12, ClientSize.Height - save.Height - 12);
            Resize += (s, _) =>
            {
                listBox1.Height = ClientSize.Height - top - margin;
                panel1.Height = listBox1.Height;
                panel1.Width = ClientSize.Width - panel1.Left - 12;
                save.Location = new Point(ClientSize.Width - save.Width - 12, ClientSize.Height - save.Height - 12);
            };
        }

        void BtnGameDir_Click(object? sender, EventArgs e)
        {
            using var fbd = new FolderBrowserDialog { Description = "Select RoadCraft folder" };
            if (fbd.ShowDialog() != DialogResult.OK) return;

            var dir = fbd.SelectedPath;
            if (!File.Exists(Path.Combine(dir, RelativePakPath)))
            {
                MessageBox.Show("default_other.pak not found", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            gameDir = dir;
            Settings.Default.GameDirPath = dir;
            Settings.Default.Save();
            BuildVehicleList();
        }

        void BuildVehicleList()
        {
            listBox1.Items.Clear();
            panel1.Controls.Clear();

            var vehiclesDir = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "vehicles");
            Directory.CreateDirectory(vehiclesDir);
            foreach (var f in Directory.GetFiles(vehiclesDir, "*.cls")) File.Delete(f);

            using var pak = ZipFile.OpenRead(Path.Combine(gameDir!, RelativePakPath));
            const string targetDir = "ssl/autogen_designer_wizard/trucks/";

            foreach (var entry in pak.Entries.Where(x =>
                         x.FullName.StartsWith(targetDir, StringComparison.OrdinalIgnoreCase) &&
                         x.Name.EndsWith(".cls", StringComparison.OrdinalIgnoreCase)))
            {
                var rel = entry.FullName.Substring(targetDir.Length);
                var slash = rel.IndexOf('/');
                if (slash < 0) continue;

                var folder = rel[..slash];
                var file = rel[(slash + 1)..];

                if (!file.Equals($"{folder}.cls", StringComparison.OrdinalIgnoreCase)) continue;
                if (folder.StartsWith("wheel", StringComparison.OrdinalIgnoreCase)) continue;
                if (folder.StartsWith("preview", StringComparison.OrdinalIgnoreCase)) continue;
                if (HelperVisual.CategorizeVehicle(folder) == "Other") continue;

                entry.ExtractToFile(Path.Combine(vehiclesDir, file), true);
            }

            var categorized = Directory.GetFiles(vehiclesDir, "*.cls")
                .Select(f =>
                {
                    var name = Path.GetFileNameWithoutExtension(f);
                    return new
                    {
                        FileName = name,
                        Category = HelperVisual.CategorizeVehicle(name),
                        PrettyName = HelperVisual.PrettyVehicleName(name)
                    };
                })
                .GroupBy(x => x.Category)
                .OrderBy(g => g.Key);

            foreach (var group in categorized)
            {
                listBox1.Items.Add(new HelperVisual.CategoryHeaderItem(group.Key));
                foreach (var item in group.OrderBy(x => x.PrettyName))
                    listBox1.Items.Add(new HelperVisual.ListBoxItem(item.PrettyName, item.FileName));
            }
        }

        void RefreshPropertyPanel() => listBox1_SelectedIndexChanged(this, EventArgs.Empty);

        void UpdateParserFromPanel(ClsParser parser)
        {
            foreach (Control ctrl in panel1.Controls)
            {
                if (ctrl.Tag is not string path) continue;

                object? value = ctrl switch
                {
                    TextBox tb => tb.Text,
                    ComboBox cb => cb.SelectedItem as string,
                    CheckBox chk => chk.Checked,
                    NumericUpDown num => num.Value,
                    _ => null
                };

                if (value == null) continue;

                var setting = FormSettings.SettingsToShow.FirstOrDefault(s => s.Path == ctrl.Name);
                var forcedType = FormSettings.GetForcedTypeForPath(ctrl.Name);
                value = ConvertToType(value, forcedType);

                if (setting != null && setting.MultiPaths is { Length: > 0 })
                {
                    foreach (var multiPath in setting.MultiPaths)
                        parser.SetValue(multiPath, value);
                }
                else
                    parser.SetValue(path, value);
            }
        }

        object ConvertToType(object value, FormSettings.ValueType? forcedType)
        {
            if (forcedType == null || forcedType == FormSettings.ValueType.Auto) return value;
            try
            {
                return forcedType switch
                {
                    FormSettings.ValueType.String => value.ToString() ?? "",
                    FormSettings.ValueType.Int => Convert.ToInt32(value),
                    FormSettings.ValueType.Float => Convert.ToSingle(value),
                    FormSettings.ValueType.Double => Convert.ToDouble(value),
                    FormSettings.ValueType.Bool => value is bool b ? b : bool.TryParse(value.ToString(), out var r) && r,
                    _ => value
                };
            }
            catch
            {
                return value.ToString() ?? "";
            }
        }

        void SaveButton_Click(object? sender, EventArgs e)
        {
            if (listBox1.SelectedItem is not HelperVisual.ListBoxItem vehicle)
            {
                MessageBox.Show("No vehicle selected.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            var saveOption = HelperVisual.SaveOptionDialog.ShowDialog(vehicle.Value);
            if (saveOption == HelperBackend.SaveOption.Cancel) return;

            string vehiclesDir = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "vehicles");
            string fileName = vehicle.Value + ".cls";
            string filePath = Path.Combine(vehiclesDir, fileName);
            if (!File.Exists(filePath))
            {
                MessageBox.Show("Vehicle file not found: " + filePath, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            var parser = new ClsParser(File.ReadAllText(filePath));
            UpdateParserFromPanel(parser);

            if (saveOption == HelperBackend.SaveOption.File)
            {
                using var sfd = new SaveFileDialog { Filter = "Vehicle files (*.cls)|*.cls", FileName = fileName };
                if (sfd.ShowDialog() != DialogResult.OK) return;
                if (Path.GetFullPath(sfd.FileName).StartsWith(Path.GetFullPath(vehiclesDir), StringComparison.OrdinalIgnoreCase))
                {
                    MessageBox.Show("Cannot overwrite original files. Please save elsewhere.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                File.WriteAllText(sfd.FileName, parser.ToClsString());
                MessageBox.Show($"Saved to {sfd.FileName}", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else if (saveOption == HelperBackend.SaveOption.Pak)
            {
                using var ofd = new OpenFileDialog { Filter = "PAK files (*.pak)|*.pak", Title = "Select default_other.pak" };
                if (ofd.ShowDialog() != DialogResult.OK) return;

                string tempClsPath = Path.GetTempFileName();
                File.WriteAllText(tempClsPath, parser.ToClsString());

                string entryName = $"ssl/autogen_designer_wizard/trucks/{vehicle.Value}/{vehicle.Value}.cls";
                try
                {
                    backend.AddOrReplaceFileInPak(ofd.FileName, tempClsPath, entryName);
                    MessageBox.Show($"Saved to {ofd.FileName}\n(entry: {entryName})", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Failed to save to .pak: " + ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                finally
                {
                    if (File.Exists(tempClsPath))
                        File.Delete(tempClsPath);
                }
            }
            else if (saveOption == HelperBackend.SaveOption.Folder)
            {
                using var fbd = new FolderBrowserDialog { Description = "Select a folder to export the mod structure" };
                if (fbd.ShowDialog() != DialogResult.OK) return;

                string exportDir = Path.Combine(fbd.SelectedPath, "ssl", "autogen_designer_wizard", "trucks", vehicle.Value);
                Directory.CreateDirectory(exportDir);
                string exportPath = Path.Combine(exportDir, $"{vehicle.Value}.cls");
                File.WriteAllText(exportPath, parser.ToClsString());
                MessageBox.Show($"Exported to {exportPath}", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        void ListBox1_DrawItem(object? sender, DrawItemEventArgs e)
        {
            if (e.Index < 0) return;
            var item = listBox1.Items[e.Index];
            e.DrawBackground();
            if (item is HelperVisual.CategoryHeaderItem header)
            {
                using var bg = new SolidBrush(Color.FromArgb(240, 240, 255));
                e.Graphics.FillRectangle(bg, e.Bounds);
                using var font = new Font(e.Font ?? Font, FontStyle.Bold);
                TextRenderer.DrawText(e.Graphics, $"★ {header.Category.ToUpper()}", font, e.Bounds, Color.MediumSlateBlue, TextFormatFlags.Left | TextFormatFlags.VerticalCenter);
            }
            else if (item is HelperVisual.ListBoxItem)
            {
                using var font = new Font(e.Font ?? Font, FontStyle.Regular);
                TextRenderer.DrawText(e.Graphics, $"   {item}", font, e.Bounds, e.ForeColor, TextFormatFlags.Left | TextFormatFlags.VerticalCenter);
            }
            e.DrawFocusRectangle();
        }

        void listBox1_SelectedIndexChanged(object? sender, EventArgs e)
        {
            panel1.AutoScroll = false;
            panel1.Controls.Clear();
            panel1.AutoScroll = true;

            if (listBox1.SelectedItem is not HelperVisual.ListBoxItem vehicle) return;

            panel1.Controls.Add(checkBoxShowGears);

            string filePath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "vehicles", vehicle.Value + ".cls");
            if (!File.Exists(filePath)) return;

            var parser = new ClsParser(File.ReadAllText(filePath));
            int y = checkBoxShowGears.Bottom + 10;
            int labelWidth = 200, controlWidth = 200, height = 24, spacing = 6;
            bool showGears = checkBoxShowGears.Checked;

            var settings = FormSettings.SettingsToShow;

            Label? currentGroupLabel = null;
            int controlsAddedForCurrentGroup = 0;

            foreach (var setting in settings)
            {
                if (setting.ShowIf != null && !setting.ShowIf(parser)) continue;
                if (setting.Group == FormSettings.Group.Gear && !showGears) continue;

                if (setting.ForcedType == FormSettings.ValueType.Label)
                {
                    if (currentGroupLabel != null && controlsAddedForCurrentGroup == 0)
                    {
                        y -= currentGroupLabel.Height + spacing;
                        panel1.Controls.Remove(currentGroupLabel);
                    }

                    currentGroupLabel = new Label
                    {
                        Text = setting.PrettyName,
                        Location = new Point(10, y),
                        Width = labelWidth + controlWidth,
                        Height = height,
                        Font = new Font(Font, FontStyle.Bold),
                        TextAlign = ContentAlignment.MiddleLeft
                    };
                    panel1.Controls.Add(currentGroupLabel);
                    y += height + spacing;
                    controlsAddedForCurrentGroup = 0;
                    continue;
                }

                int controlsAddedForThisSetting = 0;

                if (setting.MultiPaths is { Length: > 0 })
                {
                    var values = setting.MultiPaths.Select(p => parser.GetValue(p)).ToList();
                    object? displayValue = values.Distinct().Count() == 1 ? values.First() : null;

                    panel1.Controls.Add(new Label { Text = setting.PrettyName, Location = new Point(10, y), Width = labelWidth, Height = height, TextAlign = ContentAlignment.MiddleLeft });
                    Control editor = CreateEditorControl(setting.Path, setting.Path, displayValue, controlWidth, height, y);
                    panel1.Controls.Add(editor);
                    y += height + spacing;
                    controlsAddedForThisSetting++;
                }
                else if (!string.IsNullOrEmpty(setting.Filter) && !string.IsNullOrEmpty(setting.FilteredSubProperty))
                {
                    var filterParts = setting.Filter.Split(new[] { '=' }, 2);
                    if (filterParts.Length != 2) continue;

                    int? itemIndex = parser.FindObjectIndexInListByProperty(setting.Path, filterParts[0].Trim(), filterParts[1].Trim().Trim('"'));

                    if (itemIndex.HasValue)
                    {
                        string actualPath = $"{setting.Path}[{itemIndex.Value}].{setting.FilteredSubProperty}";
                        object? value = parser.GetValue(actualPath);
                        if (value != null)
                        {
                            panel1.Controls.Add(new Label { Text = setting.PrettyName, Location = new Point(10, y), Width = labelWidth, Height = height, TextAlign = ContentAlignment.MiddleLeft });
                            Control editor = CreateEditorControl(setting.Path, actualPath, value, controlWidth, height, y);
                            panel1.Controls.Add(editor);
                            y += height + spacing;
                            controlsAddedForThisSetting++;
                        }
                    }
                }
                else if (setting.Path.Contains('*'))
                {
                    string parserPath = setting.Path.Replace(".*.", "[*].").Replace(".*", "[*]");
                    var values = parser.GetValues(parserPath).ToList();
                    for (int j = 0; j < values.Count; j++)
                    {
                        string actualPath = parserPath.Replace("[*]", $"[{j}]");
                        string labelText = setting.PrettyName.Replace("{i+1}", (j + 1).ToString()).Replace("{i}", j.ToString());
                        panel1.Controls.Add(new Label { Text = labelText, Location = new Point(10, y), Width = labelWidth, Height = height, TextAlign = ContentAlignment.MiddleLeft });
                        Control editor = CreateEditorControl(setting.Path, actualPath, values[j], controlWidth, height, y);
                        panel1.Controls.Add(editor);
                        y += height + spacing;
                        controlsAddedForThisSetting++;
                    }
                }
                else
                {
                    object? value = parser.GetValue(setting.Path);
                    if (value != null)
                    {
                        panel1.Controls.Add(new Label { Text = setting.PrettyName, Location = new Point(10, y), Width = labelWidth, Height = height, TextAlign = ContentAlignment.MiddleLeft });
                        Control editor = CreateEditorControl(setting.Path, setting.Path, value, controlWidth, height, y);
                        panel1.Controls.Add(editor);
                        y += height + spacing;
                        controlsAddedForThisSetting++;
                    }
                }
                controlsAddedForCurrentGroup += controlsAddedForThisSetting;
            }

            if (currentGroupLabel != null && controlsAddedForCurrentGroup == 0)
                panel1.Controls.Remove(currentGroupLabel);

            panel1.PerformLayout();
        }

        Control CreateEditorControl(string originalPath, string actualPath, object? value, int width, int height, int y)
        {
            var forcedType = FormSettings.GetForcedTypeForPath(originalPath);
            int xPos = 220;
            Control control;

            switch (forcedType)
            {
                case FormSettings.ValueType.Bool:
                    control = new CheckBox { Checked = Convert.ToBoolean(value), Location = new Point(xPos, y), Width = width, Height = height };
                    break;
                case FormSettings.ValueType.Int:
                case FormSettings.ValueType.Float:
                case FormSettings.ValueType.Double:
                    control = new NumericUpDown
                    {
                        Minimum = -1000000,
                        Maximum = 1000000,
                        Value = Convert.ToDecimal(value),
                        DecimalPlaces = forcedType == FormSettings.ValueType.Int ? 0 : 4,
                        Increment = forcedType == FormSettings.ValueType.Int ? 1 : 0.01M,
                        Location = new Point(xPos, y),
                        Width = width,
                        Height = height
                    };
                    break;
                default:
                    if (FormSettings.PropertyDropdownOptions.TryGetValue(originalPath, out var options))
                    {
                        var comboBox = new ComboBox { DropDownStyle = ComboBoxStyle.DropDownList, Location = new Point(xPos, y), Width = width, Height = height };
                        comboBox.Items.AddRange(options);
                        comboBox.SelectedItem = value?.ToString();
                        control = comboBox;
                    }
                    else
                        control = new TextBox { Text = value?.ToString() ?? "", Location = new Point(xPos, y), Width = width, Height = height };
                    break;
            }

            control.Tag = actualPath;
            control.Name = originalPath;
            return control;
        }
        private void Form1_Load(object? sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(gameDir) &&
                File.Exists(Path.Combine(gameDir, RelativePakPath)))
                BuildVehicleList();
        }
    }
}
