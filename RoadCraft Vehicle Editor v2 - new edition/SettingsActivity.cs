using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace RoadCraft_Vehicle_Editor_v2___new_edition
{
    public partial class SettingsActivity : Form
    {
        private bool _settingsChanged = false;

        public SettingsActivity()
        {
            InitializeComponent();
            LoadSettings();
            LoadVehicleProperties();

            // Handle form closing
            this.FormClosing += SettingsActivity_FormClosing;
        }

        private void LoadSettings()
        {
            // Load the current RoadCraft folder path from global config
            GameLocationTb.Text = GlobalConfig.AppSettings.RoadCraftFolder;
        }

        private void LoadVehicleProperties()
        {
            try
            {
                PropertiesListView.Items.Clear();
                var properties = Properties.GetProperties();

                foreach (var property in properties)
                {
                    var item = new ListViewItem(property.Path);
                    item.SubItems.Add(property.Category);
                    item.SubItems.Add(property.DisplayName);
                    item.SubItems.Add(property.Description ?? string.Empty);
                    item.Tag = property;
                    PropertiesListView.Items.Add(item);
                }

                UpdatePropertyButtons();
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error loading vehicle properties: {ex.Message}", "Error",
                              MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void UpdatePropertyButtons()
        {
            bool hasSelection = PropertiesListView.SelectedItems.Count > 0;
            EditPropertyBtn.Enabled = hasSelection;
            DeletePropertyBtn.Enabled = hasSelection;
        }

        private void SelectGameBtn_Click(object sender, EventArgs e)
        {
            using (var folderDialog = new FolderBrowserDialog())
            {
                folderDialog.Description = "Select RoadCraft Folder";
                folderDialog.ShowNewFolderButton = true;

                // Set initial directory if we have a saved path
                if (!string.IsNullOrEmpty(GlobalConfig.AppSettings.LastSelectedFolder) &&
                    Directory.Exists(GlobalConfig.AppSettings.LastSelectedFolder))
                {
                    folderDialog.SelectedPath = GlobalConfig.AppSettings.LastSelectedFolder;
                }
                else if (!string.IsNullOrEmpty(GlobalConfig.AppSettings.RoadCraftFolder) &&
                         Directory.Exists(GlobalConfig.AppSettings.RoadCraftFolder))
                {
                    folderDialog.SelectedPath = GlobalConfig.AppSettings.RoadCraftFolder;
                }

                if (folderDialog.ShowDialog() == DialogResult.OK)
                {
                    string selectedPath = folderDialog.SelectedPath;

                    GameLocationTb.Text = selectedPath;

                    // Save to global config
                    GlobalConfig.AppSettings.RoadCraftFolder = selectedPath;
                    GlobalConfig.AppSettings.LastSelectedFolder = selectedPath;

                    // Save to appsettings.json
                    GlobalConfig.SaveAppSettings();

                    _settingsChanged = true;

                    MessageBox.Show($"RoadCraft folder set to: {selectedPath}", "Settings Saved",
                                  MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
        }

        private void AddPropertyBtn_Click(object sender, EventArgs e)
        {
            using (var editor = new PropertyEditorForm())
            {
                if (editor.ShowDialog() == DialogResult.OK)
                {
                    var newProperty = editor.Property;
                    
                    if (Properties.AddProperty(newProperty))
                    {
                        LoadVehicleProperties();
                        _settingsChanged = true;
                        MessageBox.Show("Property added successfully.", "Success",
                                      MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    else
                    {
                        MessageBox.Show("A property with the same path already exists.", "Error",
                                      MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }
                }
            }
        }

        private void EditPropertyBtn_Click(object sender, EventArgs e)
        {
            if (PropertiesListView.SelectedItems.Count == 0)
                return;

            var selectedItem = PropertiesListView.SelectedItems[0];
            var property = (VehicleProperty)selectedItem.Tag;
            var originalPath = property.Path;

            using (var editor = new PropertyEditorForm(property))
            {
                if (editor.ShowDialog() == DialogResult.OK)
                {
                    var updatedProperty = editor.Property;
                    
                    if (Properties.UpdateProperty(originalPath, updatedProperty))
                    {
                        LoadVehicleProperties();
                        _settingsChanged = true;
                        MessageBox.Show("Property updated successfully.", "Success",
                                      MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    else
                    {
                        MessageBox.Show("Failed to update property.", "Error",
                                      MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
            }
        }

        private void DeletePropertyBtn_Click(object sender, EventArgs e)
        {
            if (PropertiesListView.SelectedItems.Count == 0)
                return;

            var selectedItem = PropertiesListView.SelectedItems[0];
            var property = (VehicleProperty)selectedItem.Tag;

            var result = MessageBox.Show($"Are you sure you want to delete the property '{property.DisplayName}'?\n\nPath: {property.Path}",
                                       "Confirm Delete", MessageBoxButtons.YesNo, MessageBoxIcon.Question);

            if (result == DialogResult.Yes)
            {
                if (Properties.RemoveProperty(property.Path))
                {
                    LoadVehicleProperties();
                    _settingsChanged = true;
                    MessageBox.Show("Property deleted successfully.", "Success",
                                  MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    MessageBox.Show("Failed to delete property.", "Error",
                                  MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void RefreshPropertiesBtn_Click(object sender, EventArgs e)
        {
            Properties.ReloadProperties();
            LoadVehicleProperties();
            MessageBox.Show("Properties refreshed from file.", "Refresh Complete",
                          MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void PropertiesListView_SelectedIndexChanged(object sender, EventArgs e)
        {
            UpdatePropertyButtons();
        }

        private void PropertiesListView_DoubleClick(object sender, EventArgs e)
        {
            if (PropertiesListView.SelectedItems.Count > 0)
            {
                EditPropertyBtn_Click(sender, e);
            }
        }

        private void SettingsActivity_FormClosing(object? sender, FormClosingEventArgs e)
        {
            // Set dialog result based on whether settings were changed
            this.DialogResult = _settingsChanged ? DialogResult.OK : DialogResult.Cancel;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
