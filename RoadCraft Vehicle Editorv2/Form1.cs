using RoadCraft_Vehicle_Editorv2.Helper;
using RoadCraft_Vehicle_Editorv2.Parser;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace RoadCraft_Vehicle_Editorv2
{
    public partial class Form1 : Form
    {
        #region Fields

        private HelperBackend backend = new();
        private CheckBox checkBoxShowGears;
        private readonly Dictionary<string, ClsParser> originalParsers = new();
        private readonly Dictionary<string, ClsParser> editedParsers = new();
        private readonly HashSet<string> editedVehicles = new();
        private string? lastSelectedVehicle = null;
        private string? lastPakDirectory = null;
        private bool loadedFromPak = false;
        private Dictionary<string, string>? pakVehicleContents = null;

        #endregion

        #region Initialization

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

        protected override void OnShown(EventArgs e)
        {
            base.OnShown(e);

            string firstRunFlagPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "firstrun.flag");
            if (!File.Exists(firstRunFlagPath))
            {
                MessageBox.Show(
                    "Welcome to RoadCraft Vehicle Editor!\n\n" +
                    "This tool lets you view and edit vehicle parameters for RoadCraft.\n" +
                    "Make sure you read the mod's description on Nexus as it has important information in it and it may solve your issue.\n\n" +
                    "• Edit from default values or select your own pak file to edit.\n" +
                    "• Use the left list to select a vehicle.\n" +
                    "• Edit properties on the right.\n" +
                    "• Click Save to export your changes.\n\n",
                    "Welcome",
                    MessageBoxButtons.OK,
                    MessageBoxIcon.Information
                );
                File.WriteAllText(firstRunFlagPath, "shown");
            }

            if (!DesignMode && !this.IsDisposed && !this.Disposing)
            {
                this.CenterToScreen();

                using var form = new Form
                {
                    Text = "Select Source",
                    FormBorderStyle = FormBorderStyle.FixedDialog,
                    StartPosition = FormStartPosition.CenterScreen,
                    ClientSize = new Size(400, 160),
                    MinimizeBox = false,
                    MaximizeBox = false,
                    ShowInTaskbar = false,
                    TopMost = true
                };

                var label = new Label
                {
                    Text = "Use default values or load values from your pak file?",
                    AutoSize = false,
                    TextAlign = ContentAlignment.MiddleCenter,
                    Dock = DockStyle.Top,
                    Height = 40
                };
                form.Controls.Add(label);

                var btnDefault = new Button
                {
                    Text = "Load default values",
                    DialogResult = DialogResult.Yes,
                    Width = 160,
                    Height = 40,
                    Location = new Point(40, 60)
                };
                var btnPak = new Button
                {
                    Text = "Load your own pak file",
                    DialogResult = DialogResult.No,
                    Width = 160,
                    Height = 40,
                    Location = new Point(200, 60)
                };

                form.Controls.Add(btnDefault);
                form.Controls.Add(btnPak);

                form.AcceptButton = btnDefault;
                form.CancelButton = btnDefault;

                var userChoice = form.ShowDialog(this);

                this.BringToFront();
                this.Activate();
                this.Focus();

                if (userChoice == DialogResult.Cancel)
                {
                    Close();
                    return;
                }

                if (userChoice == DialogResult.Yes)
                {
                    LoadVehiclesFromFolder();
                    loadedFromPak = false;
                }
                else if (userChoice == DialogResult.No)
                {
                    LoadVehiclesFromPak();
                    loadedFromPak = true;
                }
            }
        }

        private void Form1_Load(object? sender, EventArgs e)
        {
            this.AutoScaleDimensions = new SizeF(96F, 96F);
            this.PerformAutoScale();

            listBox1.Items.Clear();
            Label note = new Label { Text = "Select a vehicle to get started.", ForeColor = Color.Red, AutoSize = true, Font = new Font("Segoe UI", 16) };
            Label note2 = new Label { Text = "Loading your own pak file may take a few seconds...", ForeColor = Color.Red, AutoSize = true, Font = new Font("Segoe UI", 16) };
            panel1.Controls.Add(note);
            panel1.Controls.Add(note2);
            note.Location = new Point((panel1.Width - note.Width) / 2, 10);
            note2.Location = new Point((panel1.Width - note2.Width) / 2, 10 + note.Height);
        }

        #endregion

        #region Vehicle Loading

        private void LoadVehiclesFromFolder()
        {
            listBox1.Items.Clear();
            originalParsers.Clear();
            editedParsers.Clear();
            editedVehicles.Clear();
            pakVehicleContents = null;

            string vehiclesDir = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "vehicles");
            if (!Directory.Exists(vehiclesDir)) return;

            var categorized = Directory.GetFiles(vehiclesDir, "*.cls")
                .Select(f => new
                {
                    FileName = Path.GetFileNameWithoutExtension(f),
                    Category = HelperVisual.CategorizeVehicle(Path.GetFileNameWithoutExtension(f)),
                    PrettyName = HelperVisual.PrettyVehicleName(Path.GetFileNameWithoutExtension(f)),
                    FilePath = f
                })
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

        private void LoadVehiclesFromPak()
        {
            listBox1.Items.Clear();
            originalParsers.Clear();
            editedParsers.Clear();
            editedVehicles.Clear();

            string? initialDir = lastPakDirectory ?? "";
            string pakPath = null;
            Dictionary<string, string> pakVehicles = null;

            using (var ofd = new OpenFileDialog
            {
                Filter = "PAK files (*.pak)|*.pak",
                Title = "Select default_other.pak",
                InitialDirectory = initialDir
            })
            {
                if (ofd.ShowDialog() != DialogResult.OK)
                    return;
                pakPath = ofd.FileName;
                lastPakDirectory = Path.GetDirectoryName(pakPath);
            }

            pakVehicles = HelperBackend.LoadVehiclesFromPakWithPath(pakPath);

            pakVehicleContents = pakVehicles ?? new Dictionary<string, string>();

            var categorized = pakVehicleContents
                .Select(kv => new
                {
                    FileName = kv.Key,
                    Category = HelperVisual.CategorizeVehicle(kv.Key),
                    PrettyName = HelperVisual.PrettyVehicleName(kv.Key),
                    Content = kv.Value
                })
                .GroupBy(x => x.Category)
                .OrderBy(g => g.Key == "Other" ? 1 : 0).ThenBy(g => g.Key);

            foreach (var group in categorized)
            {
                listBox1.Items.Add(new HelperVisual.CategoryHeaderItem(group.Key));
                foreach (var item in group.OrderBy(x => x.PrettyName))
                {
                    listBox1.Items.Add(new HelperVisual.ListBoxItem(item.PrettyName, item.FileName));
                    originalParsers[item.FileName] = new ClsParser(item.Content);
                    editedParsers[item.FileName] = new ClsParser(item.Content);
                }
            }
        }

        #endregion

        #region UI Refresh and Drawing

        private void RefreshPropertyPanel()
        {
            listBox1_SelectedIndexChanged(this, EventArgs.Empty);
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
            else if (item is HelperVisual.ListBoxItem listBoxItem)
            {
                bool isEdited = editedVehicles.Contains(listBoxItem.Value);
                using var font = new Font(e.Font ?? Font, isEdited ? FontStyle.Bold : FontStyle.Regular);
                string display = isEdited ? $"● {listBoxItem}" : $"   {listBoxItem}";
                Color textColor = isEdited ? Color.OrangeRed : e.ForeColor;
                TextRenderer.DrawText(e.Graphics, display, font, e.Bounds, textColor, TextFormatFlags.Left | TextFormatFlags.VerticalCenter);
            }
            e.DrawFocusRectangle();
        }

        #endregion

        #region Property Panel and Editing

        private void listBox1_SelectedIndexChanged(object? sender, EventArgs e)
        {
            if (lastSelectedVehicle != null)
            {
                SaveCurrentVehicleEdits();
            }

            panel1.AutoScroll = false;
            panel1.Controls.Clear();
            panel1.AutoScroll = true;

            if (listBox1.SelectedItem is not HelperVisual.ListBoxItem vehicle)
            {
                lastSelectedVehicle = null;
                return;
            }

            panel1.Controls.Add(checkBoxShowGears);

            ClsParser parser;
            if (editedParsers.TryGetValue(vehicle.Value, out var cachedParser))
            {
                parser = cachedParser;
            }
            else
            {
                if (loadedFromPak && pakVehicleContents != null && pakVehicleContents.TryGetValue(vehicle.Value, out var pakContent))
                {
                    var original = new ClsParser(pakContent);
                    var editable = new ClsParser(pakContent);
                    originalParsers[vehicle.Value] = original;
                    editedParsers[vehicle.Value] = editable;
                    parser = editable;
                }
                else
                {
                    string filePath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "vehicles", vehicle.Value + ".cls");
                    if (!File.Exists(filePath))
                    {
                        lastSelectedVehicle = null;
                        return;
                    }
                    var original = new ClsParser(File.ReadAllText(filePath));
                    var editable = new ClsParser(File.ReadAllText(filePath));
                    originalParsers[vehicle.Value] = original;
                    editedParsers[vehicle.Value] = editable;
                    parser = editable;
                }
            }

            lastSelectedVehicle = vehicle.Value;

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
                        y -= (currentGroupLabel.Height + spacing);
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

                if (setting.MultiPaths != null && setting.MultiPaths.Length > 0)
                {
                    var values = setting.MultiPaths.Select(p => parser.GetValue(p)).ToList();
                    object? displayValue = values.Distinct().Count() == 1 ? values.First() : null;

                    panel1.Controls.Add(new Label { Text = setting.PrettyName, Location = new Point(10, y), Width = labelWidth, Height = height, TextAlign = ContentAlignment.MiddleLeft });
                    Control editor = CreateEditorControl(setting.Path, setting.Path, displayValue, controlWidth, height, y);
                    AttachEditEvents(editor, vehicle.Value);
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
                            AttachEditEvents(editor, vehicle.Value);
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
                        AttachEditEvents(editor, vehicle.Value);
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
                        AttachEditEvents(editor, vehicle.Value);
                        panel1.Controls.Add(editor);
                        y += height + spacing;
                        controlsAddedForThisSetting++;
                    }
                }
                controlsAddedForCurrentGroup += controlsAddedForThisSetting;
            }

            if (currentGroupLabel != null && controlsAddedForCurrentGroup == 0)
            {
                panel1.Controls.Remove(currentGroupLabel);
            }

            panel1.PerformLayout();
        }

        private void AttachEditEvents(Control editor, string vehicleName)
        {
            void handler(object? s, EventArgs e)
            {
                SaveCurrentVehicleEdits();
            }

            if (editor is TextBox tb) tb.TextChanged += handler;
            else if (editor is CheckBox cb) cb.CheckedChanged += handler;
            else if (editor is NumericUpDown nud) nud.ValueChanged += handler;
            else if (editor is ComboBox cmb) cmb.SelectedIndexChanged += handler;
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

        #endregion

        #region Saving

        private void SaveButton_Click(object? sender, EventArgs e)
        {
            SaveCurrentVehicleEdits();

            if (editedVehicles.Count == 0)
            {
                MessageBox.Show("No vehicles have been edited.", "Nothing to Save", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            var saveOption = HelperVisual.SaveOptionDialog.ShowDialog(string.Join(", ", editedVehicles));
            if (saveOption == HelperBackend.SaveOption.Cancel) return;

            string vehiclesDir = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "vehicles");

            if (saveOption == HelperBackend.SaveOption.File)
            {
                foreach (var vehicleName in editedVehicles)
                {
                    string fileName = vehicleName + ".cls";
                    using var sfd = new SaveFileDialog
                    {
                        Filter = "Vehicle files (*.cls)|*.cls",
                        FileName = fileName,
                        Title = $"Save {fileName}"
                    };
                    if (sfd.ShowDialog() != DialogResult.OK) continue;
                    if (Path.GetFullPath(sfd.FileName).StartsWith(Path.GetFullPath(vehiclesDir), StringComparison.OrdinalIgnoreCase))
                    {
                        MessageBox.Show("Cannot overwrite original files. Please save elsewhere.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        continue;
                    }
                    File.WriteAllText(sfd.FileName, editedParsers[vehicleName].ToClsString());
                }
                MessageBox.Show("All edited vehicles saved to file(s).", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else if (saveOption == HelperBackend.SaveOption.Pak)
            {
                using var ofd = new OpenFileDialog
                {
                    Filter = "PAK files (*.pak)|*.pak",
                    Title = "Select default_other.pak",
                    InitialDirectory = lastPakDirectory ?? ""
                };
                if (ofd.ShowDialog() != DialogResult.OK) return;
                string pakPath = ofd.FileName;
                lastPakDirectory = Path.GetDirectoryName(pakPath);

                foreach (var vehicleName in editedVehicles)
                {
                    string tempClsPath = Path.GetTempFileName();
                    File.WriteAllText(tempClsPath, editedParsers[vehicleName].ToClsString());

                    string entryName = $"ssl/autogen_designer_wizard/trucks/{vehicleName}/{vehicleName}.cls";
                    try
                    {
                        backend.AddOrReplaceFileInPak(pakPath, tempClsPath, entryName);
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show($"Failed to save {vehicleName} to .pak: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                    finally
                    {
                        if (File.Exists(tempClsPath))
                            File.Delete(tempClsPath);
                    }
                }
                MessageBox.Show("All edited vehicles saved to .pak.", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else if (saveOption == HelperBackend.SaveOption.Folder)
            {
                using var fbd = new FolderBrowserDialog { Description = "Select a folder to export the mod structure" };
                if (fbd.ShowDialog() != DialogResult.OK) return;

                foreach (var vehicleName in editedVehicles)
                {
                    string exportDir = Path.Combine(fbd.SelectedPath, "ssl", "autogen_designer_wizard", "trucks", vehicleName);
                    Directory.CreateDirectory(exportDir);
                    string exportPath = Path.Combine(exportDir, $"{vehicleName}.cls");
                    File.WriteAllText(exportPath, editedParsers[vehicleName].ToClsString());
                }
                MessageBox.Show("All edited vehicles exported to folder structure.", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }

            editedVehicles.Clear();
            editedParsers.Clear();
            originalParsers.Clear();
            listBox1.Invalidate();
        }

        private void SaveCurrentVehicleEdits()
        {
            if (lastSelectedVehicle is not string vehicleName) return;
            if (!editedParsers.TryGetValue(vehicleName, out var parser)) return;

            UpdateParserFromPanel(parser);

            if (originalParsers.TryGetValue(vehicleName, out var original))
            {
                if (!HelperVisual.AreParsersEqual(original, parser))
                {
                    editedVehicles.Add(vehicleName);
                }
                else
                {
                    editedVehicles.Remove(vehicleName);
                }
            }

            listBox1.Invalidate();
        }

        #endregion

        #region Helpers

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
                    var setting = FormSettings.SettingsToShow.FirstOrDefault(s => s.Path == ctrl.Name);
                    var forcedType = FormSettings.GetForcedTypeForPath(ctrl.Name);
                    value = ConvertToType(value, forcedType);

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
                Debug.WriteLine($"Type conversion failed for value '{value}' to type '{forcedType}': {ex.Message}");
                return value.ToString() ?? "";
            }
        }

        #endregion
    }
}