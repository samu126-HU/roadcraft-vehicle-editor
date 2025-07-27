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
    public partial class PropertyEditorForm : Form
    {
        public VehicleProperty Property { get; private set; }
        private bool _isEditMode;

        public PropertyEditorForm(VehicleProperty? property = null)
        {
            InitializeComponent();
            
            _isEditMode = property != null;
            Property = property ?? new VehicleProperty();
            
            LoadExistingCategories();
            LoadPropertyData();
            
            this.Text = _isEditMode ? "Edit Vehicle Property" : "Add Vehicle Property";
        }

        private void LoadExistingCategories()
        {
            // Load existing categories for the combo box
            var categories = Properties.GetAllCategories();
            CategoryComboBox.Items.Clear();
            CategoryComboBox.Items.AddRange(categories.ToArray());
        }

        private void LoadPropertyData()
        {
            if (_isEditMode)
            {
                PathTextBox.Text = Property.Path;
                DisplayNameTextBox.Text = Property.DisplayName;
                CategoryComboBox.Text = Property.Category;
                DescriptionTextBox.Text = Property.Description ?? string.Empty;
                ShowIfTextBox.Text = Property.ShowIf ?? string.Empty;
                FilterTextBox.Text = Property.Filter ?? string.Empty;
                TargetPropertyTextBox.Text = Property.TargetProperty ?? string.Empty;
                TableGroupTextBox.Text = Property.TableGroup ?? string.Empty;

                if (Property.MinValue.HasValue)
                    MinValueNumeric.Value = (decimal)Property.MinValue.Value;
                
                if (Property.MaxValue.HasValue)
                    MaxValueNumeric.Value = (decimal)Property.MaxValue.Value;
                
                if (Property.Step.HasValue)
                    StepNumeric.Value = (decimal)Property.Step.Value;

                if (Property.Options != null)
                    OptionsTextBox.Text = string.Join(Environment.NewLine, Property.Options);

                if (Property.MultiPath != null)
                    MultiPathTextBox.Text = string.Join(Environment.NewLine, Property.MultiPath);
            }
        }

        private void OKButton_Click(object sender, EventArgs e)
        {
            if (ValidateAndSaveProperty())
            {
                this.DialogResult = DialogResult.OK;
                this.Close();
            }
        }

        private bool ValidateAndSaveProperty()
        {
            // Create a new property object with the form data
            var newProperty = new VehicleProperty
            {
                Path = PathTextBox.Text.Trim(),
                DisplayName = DisplayNameTextBox.Text.Trim(),
                Category = CategoryComboBox.Text.Trim(),
                Description = string.IsNullOrWhiteSpace(DescriptionTextBox.Text) ? null : DescriptionTextBox.Text.Trim(),
                ShowIf = string.IsNullOrWhiteSpace(ShowIfTextBox.Text) ? null : ShowIfTextBox.Text.Trim(),
                Filter = string.IsNullOrWhiteSpace(FilterTextBox.Text) ? null : FilterTextBox.Text.Trim(),
                TargetProperty = string.IsNullOrWhiteSpace(TargetPropertyTextBox.Text) ? null : TargetPropertyTextBox.Text.Trim(),
                TableGroup = string.IsNullOrWhiteSpace(TableGroupTextBox.Text) ? null : TableGroupTextBox.Text.Trim()
            };

            // Handle numeric values
            if (MinValueNumeric.Value != 0)
                newProperty.MinValue = (double)MinValueNumeric.Value;

            if (MaxValueNumeric.Value != 0)
                newProperty.MaxValue = (double)MaxValueNumeric.Value;

            if (StepNumeric.Value != 0)
                newProperty.Step = (double)StepNumeric.Value;

            // Handle options array
            if (!string.IsNullOrWhiteSpace(OptionsTextBox.Text))
            {
                var options = OptionsTextBox.Text.Split(new[] { Environment.NewLine }, StringSplitOptions.RemoveEmptyEntries)
                                                .Select(o => o.Trim())
                                                .Where(o => !string.IsNullOrEmpty(o))
                                                .ToArray();
                if (options.Length > 0)
                    newProperty.Options = options;
            }

            // Handle multi-path array
            if (!string.IsNullOrWhiteSpace(MultiPathTextBox.Text))
            {
                var multiPaths = MultiPathTextBox.Text.Split(new[] { Environment.NewLine }, StringSplitOptions.RemoveEmptyEntries)
                                                     .Select(p => p.Trim())
                                                     .Where(p => !string.IsNullOrEmpty(p))
                                                     .ToArray();
                if (multiPaths.Length > 0)
                    newProperty.MultiPath = multiPaths;
            }

            // Validate the property
            var validationErrors = Properties.ValidateProperty(newProperty);
            if (validationErrors.Count > 0)
            {
                var errorMessage = "Please fix the following errors:\n\n" + string.Join("\n", validationErrors);
                MessageBox.Show(errorMessage, "Validation Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }

            // Update the Property object
            Property = newProperty;
            return true;
        }
    }
}