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

            // Handle form closing
            this.FormClosing += SettingsActivity_FormClosing;
        }

        private void LoadSettings()
        {
            // Load the current RoadCraft folder path from global config
            GameLocationTb.Text = GlobalConfig.AppSettings.RoadCraftFolder;
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
