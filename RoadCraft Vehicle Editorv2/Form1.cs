using RoadCraft_Vehicle_Editorv2.Helper;
using RoadCraft_Vehicle_Editorv2.Parser;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Windows.Forms;

namespace RoadCraft_Vehicle_Editorv2
{
    public partial class Form1 : Form
    {
        private HelperBackend backend = new();
        private CheckBox checkBoxShowGears;

        public Form1()
        {
            InitializeComponent();
            this.AutoScaleMode = AutoScaleMode.Dpi;
            listBox1.DrawMode = DrawMode.OwnerDrawFixed;
            listBox1.DrawItem += ListBox1_DrawItem;
            checkBoxShowGears = new CheckBox
            {
                Text = "Show Gear Options",
                Checked = false,
                AutoSize = true,
                Location = new Point(10, 10)
            };
            checkBoxShowGears.CheckedChanged += (s, e) => RefreshPropertyPanel();
        }

        private void RefreshPropertyPanel()
        {
            listBox1_SelectedIndexChanged(this, EventArgs.Empty);
        }

        private void UpdateParserFromPanel(ClsParser parser)
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

                if (value != null)
                {
                    // Find the setting for this control
                    var setting = FormSettings.SettingsToShow.FirstOrDefault(s => s.Path == ctrl.Name);
                    var forcedType = FormSettings.GetForcedTypeForPath(ctrl.Name);
                    value = ConvertToType(value, forcedType);

                    // If MultiPaths is set, update all paths
                    if (setting != null && setting.MultiPaths != null && setting.MultiPaths.Length > 0)
                    {
                        foreach (var multiPath in setting.MultiPaths)
                        {
                            parser.SetValue(multiPath, value);
                        }
                    }
                    else
                    {
                        parser.SetValue(path, value);
                    }
                }
            }
        }

        private object ConvertToType(object value, FormSettings.ValueType? forcedType)
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
                    FormSettings.ValueType.Bool => value is bool b ? b : bool.TryParse(value.ToString(), out var result) && result,
                    _ => value,
                };
            }
            catch (Exception ex)
            {
                // Log the error for easier debugging of faulty .cls files.
                Debug.WriteLine($"Type conversion failed for value '{value}' to type '{forcedType}': {ex.Message}");
                return value.ToString() ?? ""; // Fallback to string
            }
        }

        private void SaveButton_Click(object? sender, EventArgs e)
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

        private void Form1_Load(object? sender, EventArgs e)
        {
            this.AutoScaleDimensions = new SizeF(96F, 96F);
            this.PerformAutoScale();

            listBox1.Items.Clear();
            Label note = new Label { Text = "Select a vehicle to get started.", ForeColor = Color.Red, AutoSize = true, Font = new Font("Segoe UI", 16) };
            panel1.Controls.Add(note);
            note.Location = new Point((panel1.Width - note.Width) / 2, 10);

            string vehiclesDir = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "vehicles");
            if (!Directory.Exists(vehiclesDir)) return;

            var categorized = Directory.GetFiles(vehiclesDir, "*.cls")
                .Select(f => new { FileName = Path.GetFileNameWithoutExtension(f), Category = HelperVisual.CategorizeVehicle(Path.GetFileNameWithoutExtension(f)), PrettyName = HelperVisual.PrettyVehicleName(Path.GetFileNameWithoutExtension(f)) })
                .GroupBy(x => x.Category)
                .OrderBy(g => g.Key == "Other" ? 1 : 0).ThenBy(g => g.Key);

            foreach (var group in categorized)
            {
                listBox1.Items.Add(new HelperVisual.CategoryHeaderItem(group.Key));
                foreach (var item in group.OrderBy(x => x.PrettyName))
                {
                    listBox1.Items.Add(new HelperVisual.ListBoxItem(item.PrettyName, item.FileName));
                }
            }
        }

        private void ListBox1_DrawItem(object? sender, DrawItemEventArgs e)
        {
            if (e.Index < 0) return;
            var item = listBox1.Items[e.Index];
            e.DrawBackground();
            if (item is HelperVisual.CategoryHeaderItem header)
            {
                using var bgBrush = new SolidBrush(Color.FromArgb(240, 240, 255));
                e.Graphics.FillRectangle(bgBrush, e.Bounds);
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

        private void listBox1_SelectedIndexChanged(object? sender, EventArgs e)
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
                // Skip settings that don't match conditions (e.g. gear settings when hidden).
                if (setting.ShowIf != null && !setting.ShowIf(parser)) continue;
                if (setting.Group == FormSettings.Group.Gear && !showGears) continue;

                // If this is a new group label, finalize the previous group first.
                if (setting.ForcedType == FormSettings.ValueType.Label)
                {
                    if (currentGroupLabel != null && controlsAddedForCurrentGroup == 0)
                    {
                        // The previous group had no visible controls, so remove its label.
                        y -= (currentGroupLabel.Height + spacing);
                        panel1.Controls.Remove(currentGroupLabel);
                    }

                    // Create and add the new group label.
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
                    controlsAddedForCurrentGroup = 0; // Reset counter for the new group.
                    continue;
                }

                int controlsAddedForThisSetting = 0;

                // MultiPaths: Show as a single control, but read/write all paths
                if (setting.MultiPaths != null && setting.MultiPaths.Length > 0)
                {
                    // Read all values, if all are the same, show that value, else show empty/varies
                    var values = setting.MultiPaths.Select(p => parser.GetValue(p)).ToList();
                    object? displayValue = values.Distinct().Count() == 1 ? values.First() : null;

                    panel1.Controls.Add(new Label { Text = setting.PrettyName, Location = new Point(10, y), Width = labelWidth, Height = height, TextAlign = ContentAlignment.MiddleLeft });
                    Control editor = CreateEditorControl(setting.Path, setting.Path, displayValue, controlWidth, height, y);
                    panel1.Controls.Add(editor);
                    y += height + spacing;
                    controlsAddedForThisSetting++;
                }
                // Handle settings that filter a list to find a specific object
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
                // Handle settings that apply to every item in a list (wildcard)
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
                // Handle all other simple settings
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

            // After the loop, perform a final check on the very last group.
            if (currentGroupLabel != null && controlsAddedForCurrentGroup == 0)
            {
                panel1.Controls.Remove(currentGroupLabel);
            }

            panel1.PerformLayout();
        }

        private Control CreateEditorControl(string originalPath, string actualPath, object? value, int width, int height, int y)
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
                        DecimalPlaces = (forcedType == FormSettings.ValueType.Int) ? 0 : 4,
                        Increment = (forcedType == FormSettings.ValueType.Int) ? 1 : 0.01M,
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
                    {
                        control = new TextBox { Text = value?.ToString() ?? "", Location = new Point(xPos, y), Width = width, Height = height };
                    }
                    break;
            }

            control.Tag = actualPath;
            control.Name = originalPath;
            return control;
        }
    }
}