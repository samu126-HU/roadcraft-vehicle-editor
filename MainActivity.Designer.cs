namespace RoadCraft_Vehicle_Editor_v2___new_edition
{
    partial class MainActivity
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                // Clean up property editors
                CleanupPropertyEditors();
                
                // Clean up CLS file editor
                _clsFileEditor?.Dispose();
                _clsFileEditor = null;
                
                // Clear caches to free memory
                lock (_vehicleDataLock)
                {
                    _vehicleDataCache.Clear();
                    _vehicleClsFilesCache.Clear();
                }
                
                lock (_modifiedVehiclesLock)
                {
                    _modifiedVehicles.Clear();
                }
                
                // Dispose designer components
                if (components != null)
                {
                    components.Dispose();
                }
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            VehicleList = new ListBox();
            SettingsBtn = new Button();
            StatusLabel = new Label();
            SaveBtn = new Button();
            propertiesTab = new TabControl();
            SuspendLayout();
            // 
            // VehicleList
            // 
            VehicleList.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left;
            VehicleList.FormattingEnabled = true;
            VehicleList.ItemHeight = 21;
            VehicleList.Location = new Point(12, 12);
            VehicleList.Margin = new Padding(4);
            VehicleList.Name = "VehicleList";
            VehicleList.Size = new Size(331, 445);
            VehicleList.TabIndex = 0;
            VehicleList.SelectedIndexChanged += VehicleList_SelectedIndexChanged;
            // 
            // SettingsBtn
            // 
            SettingsBtn.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
            SettingsBtn.Font = new Font("Segoe UI", 9F, FontStyle.Regular, GraphicsUnit.Point, 0);
            SettingsBtn.Location = new Point(351, 421);
            SettingsBtn.Margin = new Padding(4);
            SettingsBtn.Name = "SettingsBtn";
            SettingsBtn.Size = new Size(36, 36);
            SettingsBtn.TabIndex = 1;
            SettingsBtn.Text = "⚙️";
            SettingsBtn.UseVisualStyleBackColor = true;
            SettingsBtn.Click += button1_Click;
            // 
            // StatusLabel
            // 
            StatusLabel.Anchor = AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            StatusLabel.AutoSize = true;
            StatusLabel.Font = new Font("Segoe UI", 9.75F, FontStyle.Regular, GraphicsUnit.Point, 0);
            StatusLabel.Location = new Point(395, 430);
            StatusLabel.Margin = new Padding(4, 0, 4, 0);
            StatusLabel.Name = "StatusLabel";
            StatusLabel.Size = new Size(43, 17);
            StatusLabel.TabIndex = 3;
            StatusLabel.Text = "Status";
            // 
            // SaveBtn
            // 
            SaveBtn.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
            SaveBtn.Location = new Point(896, 426);
            SaveBtn.Margin = new Padding(4);
            SaveBtn.Name = "SaveBtn";
            SaveBtn.Size = new Size(100, 36);
            SaveBtn.TabIndex = 4;
            SaveBtn.Text = "Save";
            SaveBtn.UseVisualStyleBackColor = true;
            // 
            // propertiesTab
            // 
            propertiesTab.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            propertiesTab.Location = new Point(351, 12);
            propertiesTab.Margin = new Padding(4);
            propertiesTab.Name = "propertiesTab";
            propertiesTab.SelectedIndex = 0;
            propertiesTab.Size = new Size(645, 403);
            propertiesTab.TabIndex = 5;
            // 
            // MainActivity
            // 
            AutoScaleDimensions = new SizeF(9F, 21F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1008, 473);
            Controls.Add(propertiesTab);
            Controls.Add(SaveBtn);
            Controls.Add(StatusLabel);
            Controls.Add(SettingsBtn);
            Controls.Add(VehicleList);
            Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point, 0);
            Margin = new Padding(4);
            MinimumSize = new Size(1024, 512);
            Name = "MainActivity";
            Text = "RoadCraft Vehicle Editor";
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private ListBox VehicleList;
        private Button SettingsBtn;
        private Label StatusLabel;
        private Button SaveBtn;
        private TabControl propertiesTab;
    }
}
