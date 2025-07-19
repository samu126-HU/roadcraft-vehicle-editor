namespace RoadCraft_Vehicle_Editor_v2___new_edition
{
    partial class SaveOptionsDialog
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
            SaveToFileBtn = new Button();
            SaveToFolderBtn = new Button();
            SaveToPakBtn = new Button();
            CancelBtn = new Button();
            TitleLabel = new Label();
            FileDescLabel = new Label();
            FolderDescLabel = new Label();
            PakDescLabel = new Label();
            SuspendLayout();
            // 
            // SaveToFileBtn
            // 
            SaveToFileBtn.Location = new Point(12, 50);
            SaveToFileBtn.Name = "SaveToFileBtn";
            SaveToFileBtn.Size = new Size(120, 30);
            SaveToFileBtn.TabIndex = 0;
            SaveToFileBtn.Text = "Save to File";
            SaveToFileBtn.UseVisualStyleBackColor = true;
            SaveToFileBtn.Click += SaveToFileBtn_Click;
            // 
            // SaveToFolderBtn
            // 
            SaveToFolderBtn.Location = new Point(12, 110);
            SaveToFolderBtn.Name = "SaveToFolderBtn";
            SaveToFolderBtn.Size = new Size(120, 30);
            SaveToFolderBtn.TabIndex = 1;
            SaveToFolderBtn.Text = "Save to Folder";
            SaveToFolderBtn.UseVisualStyleBackColor = true;
            SaveToFolderBtn.Click += SaveToFolderBtn_Click;
            // 
            // SaveToPakBtn
            // 
            SaveToPakBtn.Location = new Point(12, 170);
            SaveToPakBtn.Name = "SaveToPakBtn";
            SaveToPakBtn.Size = new Size(120, 30);
            SaveToPakBtn.TabIndex = 2;
            SaveToPakBtn.Text = "Save to PAK";
            SaveToPakBtn.UseVisualStyleBackColor = true;
            SaveToPakBtn.Click += SaveToPakBtn_Click;
            // 
            // CancelBtn
            // 
            CancelBtn.Location = new Point(384, 219);
            CancelBtn.Name = "CancelBtn";
            CancelBtn.Size = new Size(100, 30);
            CancelBtn.TabIndex = 4;
            CancelBtn.Text = "Cancel";
            CancelBtn.UseVisualStyleBackColor = true;
            CancelBtn.Click += CancelBtn_Click;
            // 
            // TitleLabel
            // 
            TitleLabel.AutoSize = true;
            TitleLabel.Font = new Font("Segoe UI", 12F, FontStyle.Bold);
            TitleLabel.Location = new Point(12, 15);
            TitleLabel.Name = "TitleLabel";
            TitleLabel.Size = new Size(180, 21);
            TitleLabel.TabIndex = 5;
            TitleLabel.Text = "Choose Save Location:";
            // 
            // FileDescLabel
            // 
            FileDescLabel.AutoSize = true;
            FileDescLabel.Location = new Point(150, 50);
            FileDescLabel.Name = "FileDescLabel";
            FileDescLabel.Size = new Size(310, 30);
            FileDescLabel.TabIndex = 6;
            FileDescLabel.Text = "Saves the CLS file to a location of your choice. \r\nChoose a folder and it will directly save the cls files into it.";
            FileDescLabel.Click += FileDescLabel_Click;
            // 
            // FolderDescLabel
            // 
            FolderDescLabel.AutoSize = true;
            FolderDescLabel.Location = new Point(150, 110);
            FolderDescLabel.Name = "FolderDescLabel";
            FolderDescLabel.Size = new Size(292, 30);
            FolderDescLabel.TabIndex = 7;
            FolderDescLabel.Text = "Saves the CLS file in the correct folder structure:\r\nssl/autogen_designer_wizard/trucks/[truck]/[truck].cls";
            // 
            // PakDescLabel
            // 
            PakDescLabel.AutoSize = true;
            PakDescLabel.Location = new Point(150, 170);
            PakDescLabel.Name = "PakDescLabel";
            PakDescLabel.Size = new Size(239, 30);
            PakDescLabel.TabIndex = 8;
            PakDescLabel.Text = "Saves the CLS file directly into the PAK file.\r\nThis will modify the game's PAK file directly.";
            // 
            // SaveOptionsDialog
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(496, 261);
            Controls.Add(PakDescLabel);
            Controls.Add(FolderDescLabel);
            Controls.Add(FileDescLabel);
            Controls.Add(TitleLabel);
            Controls.Add(CancelBtn);
            Controls.Add(SaveToPakBtn);
            Controls.Add(SaveToFolderBtn);
            Controls.Add(SaveToFileBtn);
            FormBorderStyle = FormBorderStyle.FixedDialog;
            MaximizeBox = false;
            MinimizeBox = false;
            Name = "SaveOptionsDialog";
            StartPosition = FormStartPosition.CenterParent;
            Text = "Save Options";
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Button SaveToFileBtn;
        private Button SaveToFolderBtn;
        private Button SaveToPakBtn;
        private Button CancelBtn;
        private Label TitleLabel;
        private Label FileDescLabel;
        private Label FolderDescLabel;
        private Label PakDescLabel;
    }
}