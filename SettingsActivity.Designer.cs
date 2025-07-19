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
            // SettingsActivity
            // 
            AutoScaleDimensions = new SizeF(9F, 21F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1008, 473);
            Controls.Add(OKBtn);
            Controls.Add(SelectGameBtn);
            Controls.Add(GameLocationTb);
            Controls.Add(GameLocationTitleLb);
            Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point, 0);
            Margin = new Padding(4);
            MinimumSize = new Size(1024, 512);
            Name = "SettingsActivity";
            Text = "Settings";
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label GameLocationTitleLb;
        private TextBox GameLocationTb;
        private Button SelectGameBtn;
        private Button OKBtn;
    }
}