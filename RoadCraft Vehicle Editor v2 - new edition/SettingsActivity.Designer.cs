namespace RoadCraft_Vehicle_Editor_v2___new_edition
{
    partial class SettingsActivity
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            GameLocationTitleLb = new Label();
            GameLocationTb = new TextBox();
            SelectGameBtn = new Button();
            OKBtn = new Button();
            VehiclePropertiesTabControl = new TabControl();
            GameSettingsTab = new TabPage();
            VehiclePropertiesTab = new TabPage();
            PropertiesListView = new ListView();
            PathColumn = new ColumnHeader();
            CategoryColumn = new ColumnHeader();
            DisplayNameColumn = new ColumnHeader();
            DescriptionColumn = new ColumnHeader();
            PropertiesToolStrip = new ToolStrip();
            AddPropertyBtn = new ToolStripButton();
            EditPropertyBtn = new ToolStripButton();
            DeletePropertyBtn = new ToolStripButton();
            toolStripSeparator1 = new ToolStripSeparator();
            RefreshPropertiesBtn = new ToolStripButton();
            VehiclePropertiesTabControl.SuspendLayout();
            GameSettingsTab.SuspendLayout();
            VehiclePropertiesTab.SuspendLayout();
            PropertiesToolStrip.SuspendLayout();
            SuspendLayout();
            // 
            // GameLocationTitleLb
            // 
            GameLocationTitleLb.AutoSize = true;
            GameLocationTitleLb.Location = new Point(15, 13);
            GameLocationTitleLb.Margin = new Padding(4, 0, 4, 0);
            GameLocationTitleLb.Name = "GameLocationTitleLb";
            GameLocationTitleLb.Size = new Size(128, 21);
            GameLocationTitleLb.TabIndex = 0;
            GameLocationTitleLb.Text = "RoadCraft Folder";
            // 
            // GameLocationTb
            // 
            GameLocationTb.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right;
            GameLocationTb.Enabled = false;
            GameLocationTb.ImeMode = ImeMode.NoControl;
            GameLocationTb.Location = new Point(96, 35);
            GameLocationTb.Margin = new Padding(4, 3, 4, 3);
            GameLocationTb.Name = "GameLocationTb";
            GameLocationTb.ReadOnly = true;
            GameLocationTb.Size = new Size(897, 29);
            GameLocationTb.TabIndex = 1;
            // 
            // SelectGameBtn
            // 
            SelectGameBtn.Location = new Point(15, 37);
            SelectGameBtn.Margin = new Padding(4, 3, 4, 3);
            SelectGameBtn.Name = "SelectGameBtn";
            SelectGameBtn.Size = new Size(75, 27);
            SelectGameBtn.TabIndex = 2;
            SelectGameBtn.Text = "Select";
            SelectGameBtn.UseVisualStyleBackColor = true;
            SelectGameBtn.Click += SelectGameBtn_Click;
            // 
            // OKBtn
            // 
            OKBtn.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
            OKBtn.Location = new Point(918, 429);
            OKBtn.Margin = new Padding(4, 3, 4, 3);
            OKBtn.Name = "OKBtn";
            OKBtn.Size = new Size(75, 32);
            OKBtn.TabIndex = 3;
            OKBtn.Text = "OK";
            OKBtn.UseVisualStyleBackColor = true;
            OKBtn.Click += button1_Click;
            // 
            // VehiclePropertiesTabControl
            // 
            VehiclePropertiesTabControl.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            VehiclePropertiesTabControl.Controls.Add(GameSettingsTab);
            VehiclePropertiesTabControl.Controls.Add(VehiclePropertiesTab);
            VehiclePropertiesTabControl.Location = new Point(12, 12);
            VehiclePropertiesTabControl.Name = "VehiclePropertiesTabControl";
            VehiclePropertiesTabControl.SelectedIndex = 0;
            VehiclePropertiesTabControl.Size = new Size(984, 411);
            VehiclePropertiesTabControl.TabIndex = 4;
            // 
            // GameSettingsTab
            // 
            GameSettingsTab.Controls.Add(GameLocationTitleLb);
            GameSettingsTab.Controls.Add(GameLocationTb);
            GameSettingsTab.Controls.Add(SelectGameBtn);
            GameSettingsTab.Location = new Point(4, 30);
            GameSettingsTab.Name = "GameSettingsTab";
            GameSettingsTab.Padding = new Padding(3);
            GameSettingsTab.Size = new Size(976, 377);
            GameSettingsTab.TabIndex = 0;
            GameSettingsTab.Text = "Game Settings";
            GameSettingsTab.UseVisualStyleBackColor = true;
            // 
            // VehiclePropertiesTab
            // 
            VehiclePropertiesTab.Controls.Add(PropertiesListView);
            VehiclePropertiesTab.Controls.Add(PropertiesToolStrip);
            VehiclePropertiesTab.Location = new Point(4, 30);
            VehiclePropertiesTab.Name = "VehiclePropertiesTab";
            VehiclePropertiesTab.Padding = new Padding(3);
            VehiclePropertiesTab.Size = new Size(976, 377);
            VehiclePropertiesTab.TabIndex = 1;
            VehiclePropertiesTab.Text = "Vehicle Properties";
            VehiclePropertiesTab.UseVisualStyleBackColor = true;
            // 
            // PropertiesListView
            // 
            PropertiesListView.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            PropertiesListView.Columns.AddRange(new ColumnHeader[] { PathColumn, CategoryColumn, DisplayNameColumn, DescriptionColumn });
            PropertiesListView.FullRowSelect = true;
            PropertiesListView.GridLines = true;
            PropertiesListView.Location = new Point(6, 31);
            PropertiesListView.MultiSelect = false;
            PropertiesListView.Name = "PropertiesListView";
            PropertiesListView.Size = new Size(964, 340);
            PropertiesListView.TabIndex = 1;
            PropertiesListView.UseCompatibleStateImageBehavior = false;
            PropertiesListView.View = View.Details;
            PropertiesListView.SelectedIndexChanged += PropertiesListView_SelectedIndexChanged;
            PropertiesListView.DoubleClick += PropertiesListView_DoubleClick;
            // 
            // PathColumn
            // 
            PathColumn.Text = "Path";
            PathColumn.Width = 300;
            // 
            // CategoryColumn
            // 
            CategoryColumn.Text = "Category";
            CategoryColumn.Width = 120;
            // 
            // DisplayNameColumn
            // 
            DisplayNameColumn.Text = "Display Name";
            DisplayNameColumn.Width = 200;
            // 
            // DescriptionColumn
            // 
            DescriptionColumn.Text = "Description";
            DescriptionColumn.Width = 300;
            // 
            // PropertiesToolStrip
            // 
            PropertiesToolStrip.Items.AddRange(new ToolStripItem[] { AddPropertyBtn, EditPropertyBtn, DeletePropertyBtn, toolStripSeparator1, RefreshPropertiesBtn });
            PropertiesToolStrip.Location = new Point(3, 3);
            PropertiesToolStrip.Name = "PropertiesToolStrip";
            PropertiesToolStrip.Size = new Size(970, 25);
            PropertiesToolStrip.TabIndex = 0;
            PropertiesToolStrip.Text = "toolStrip1";
            // 
            // AddPropertyBtn
            // 
            AddPropertyBtn.ImageTransparentColor = Color.Magenta;
            AddPropertyBtn.Name = "AddPropertyBtn";
            AddPropertyBtn.Size = new Size(33, 22);
            AddPropertyBtn.Text = "Add";
            AddPropertyBtn.Click += AddPropertyBtn_Click;
            // 
            // EditPropertyBtn
            // 
            EditPropertyBtn.Enabled = false;
            EditPropertyBtn.ImageTransparentColor = Color.Magenta;
            EditPropertyBtn.Name = "EditPropertyBtn";
            EditPropertyBtn.Size = new Size(31, 22);
            EditPropertyBtn.Text = "Edit";
            EditPropertyBtn.Click += EditPropertyBtn_Click;
            // 
            // DeletePropertyBtn
            // 
            DeletePropertyBtn.Enabled = false;
            DeletePropertyBtn.ImageTransparentColor = Color.Magenta;
            DeletePropertyBtn.Name = "DeletePropertyBtn";
            DeletePropertyBtn.Size = new Size(44, 22);
            DeletePropertyBtn.Text = "Delete";
            DeletePropertyBtn.Click += DeletePropertyBtn_Click;
            // 
            // toolStripSeparator1
            // 
            toolStripSeparator1.Name = "toolStripSeparator1";
            toolStripSeparator1.Size = new Size(6, 25);
            // 
            // RefreshPropertiesBtn
            // 
            RefreshPropertiesBtn.ImageTransparentColor = Color.Magenta;
            RefreshPropertiesBtn.Name = "RefreshPropertiesBtn";
            RefreshPropertiesBtn.Size = new Size(50, 22);
            RefreshPropertiesBtn.Text = "Refresh";
            RefreshPropertiesBtn.Click += RefreshPropertiesBtn_Click;
            // 
            // SettingsActivity
            // 
            AutoScaleDimensions = new SizeF(9F, 21F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1008, 473);
            Controls.Add(VehiclePropertiesTabControl);
            Controls.Add(OKBtn);
            Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point, 0);
            Margin = new Padding(4);
            MinimumSize = new Size(1024, 512);
            Name = "SettingsActivity";
            Text = "Settings";
            VehiclePropertiesTabControl.ResumeLayout(false);
            GameSettingsTab.ResumeLayout(false);
            GameSettingsTab.PerformLayout();
            VehiclePropertiesTab.ResumeLayout(false);
            VehiclePropertiesTab.PerformLayout();
            PropertiesToolStrip.ResumeLayout(false);
            PropertiesToolStrip.PerformLayout();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label GameLocationTitleLb;
        private TextBox GameLocationTb;
        private Button SelectGameBtn;
        private Button OKBtn;
        private TabControl VehiclePropertiesTabControl;
        private TabPage GameSettingsTab;
        private TabPage VehiclePropertiesTab;
        private ListView PropertiesListView;
        private ColumnHeader PathColumn;
        private ColumnHeader CategoryColumn;
        private ColumnHeader DisplayNameColumn;
        private ColumnHeader DescriptionColumn;
        private ToolStrip PropertiesToolStrip;
        private ToolStripButton AddPropertyBtn;
        private ToolStripButton EditPropertyBtn;
        private ToolStripButton DeletePropertyBtn;
        private ToolStripSeparator toolStripSeparator1;
        private ToolStripButton RefreshPropertiesBtn;
    }
}