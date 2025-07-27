namespace RoadCraft_Vehicle_Editor_v2___new_edition
{
    public partial class SaveOptionsDialog : Form
    {
        public SaveOption SelectedOption { get; private set; }

        public SaveOptionsDialog()
        {
            InitializeComponent();
        }

        private void SaveToFileBtn_Click(object sender, EventArgs e)
        {
            SelectedOption = SaveOption.ToFile;
            this.DialogResult = DialogResult.OK;
            this.Close();
        }

        private void SaveToFolderBtn_Click(object sender, EventArgs e)
        {
            SelectedOption = SaveOption.ToFolderStructure;
            this.DialogResult = DialogResult.OK;
            this.Close();
        }

        private void SaveToPakBtn_Click(object sender, EventArgs e)
        {
            SelectedOption = SaveOption.ToPakFile;
            this.DialogResult = DialogResult.OK;
            this.Close();
        }

        private void CancelBtn_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
            this.Close();
        }

        private void FileDescLabel_Click(object sender, EventArgs e)
        {

        }
    }
}