using ClsParser.Library;
using System.ComponentModel;
using System.Text;
using System.IO;
using System.Linq;
using System.Globalization;

namespace RoadCraft_Vehicle_Editor_v2___new_edition
{
    /// <summary>
    /// Event arguments for CLS file property changes
    /// </summary>
    public class ClsPropertyChangedEventArgs : EventArgs
    {
        public string ClsFileName { get; set; } = string.Empty;
        public string PropertyPath { get; set; } = string.Empty;
        public object? NewValue { get; set; }
        public object? OldValue { get; set; }
        public Dictionary<string, object>? UpdatedClsData { get; set; }
    }

    /// <summary>
    /// UserControl for editing all CLS files in a vehicle folder using TreeView
    /// </summary>
    public class ClsFileEditor : UserControl
    {
        private TabControl _clsFilesTabControl = null!;
        private Dictionary<string, Dictionary<string, object>> _clsFilesData = new Dictionary<string, Dictionary<string, object>>();
        private Dictionary<string, ClsFileParser> _clsParsers = new Dictionary<string, ClsFileParser>();
        private string _vehicleName = string.Empty;

        public event EventHandler<ClsPropertyChangedEventArgs>? ClsPropertyChanged;

        public ClsFileEditor()
        {
            InitializeComponent();
        }

        private void InitializeComponent()
        {
            this.SuspendLayout();

            // Create main tab control for CLS files
            _clsFilesTabControl = new TabControl
            {
                Dock = DockStyle.Fill,
                Font = GlobalConstants.Fonts.DefaultFont,
                SizeMode = TabSizeMode.Normal,
                Appearance = TabAppearance.Normal
            };

            this.Controls.Add(_clsFilesTabControl);
            this.BackColor = GlobalConstants.Colors.BackgroundLight;

            this.ResumeLayout(false);
        }

        /// <summary>
        /// Loads all CLS files for a vehicle
        /// </summary>
        public async Task LoadClsFilesAsync(string vehicleName, Dictionary<string, (string fileName, byte[] content)> clsFiles)
        {
            _vehicleName = vehicleName;
            _clsFilesData.Clear();
            _clsParsers.Clear();
            _clsFilesTabControl.TabPages.Clear();

            if (clsFiles.Count == 0)
            {
                // Show message if no additional CLS files found
                var noFilesTab = new TabPage("No Additional Files");
                var noFilesLabel = new Label
                {
                    Text = "No additional CLS files found in this vehicle folder.",
                    Dock = DockStyle.Fill,
                    TextAlign = ContentAlignment.MiddleCenter,
                    Font = GlobalConstants.Fonts.SubHeaderItalicFont,
                    ForeColor = GlobalConstants.Colors.TextMuted
                };
                noFilesTab.Controls.Add(noFilesLabel);
                _clsFilesTabControl.TabPages.Add(noFilesTab);
                return;
            }

            // Configure tab control for optimal display based on number of files
            if (clsFiles.Count <= 6)
            {
                // For few files, use normal sizing to accommodate full names
                _clsFilesTabControl.SizeMode = TabSizeMode.Normal;
            }
            else
            {
                // For many files, use fixed sizing to prevent overcrowding
                _clsFilesTabControl.SizeMode = TabSizeMode.Fixed;
                _clsFilesTabControl.ItemSize = new Size(100, 25);
            }

            foreach (var kvp in clsFiles)
            {
                var fileName = kvp.Key;
                var content = kvp.Value.content;

                try
                {
                    // Parse the CLS file
                    var clsParser = new ClsFileParser();
                    var clsString = Encoding.UTF8.GetString(content);
                    var clsData = clsParser.Parse(clsString);

                    // Store the data and parser
                    _clsFilesData[fileName] = clsData;
                    _clsParsers[fileName] = clsParser;

                    // Create tab for this CLS file
                    await CreateClsFileTab(fileName, clsData);
                }
                catch (Exception ex)
                {
                    // Create error tab for files that couldn't be parsed
                    var errorTabName = CreateSmartTabName(fileName);
                    
                    var errorTab = new TabPage($"❌ {errorTabName}");
                    errorTab.ToolTipText = $"Error parsing {Path.GetFileNameWithoutExtension(fileName)}: {ex.Message}";
                    
                    var errorLabel = new Label
                    {
                        Text = $"Error parsing {fileName}:\n{ex.Message}",
                        Dock = DockStyle.Fill,
                        TextAlign = ContentAlignment.MiddleCenter,
                        Font = GlobalConstants.Fonts.DefaultFont,
                        ForeColor = GlobalConstants.Colors.Error
                    };
                    errorTab.Controls.Add(errorLabel);
                    _clsFilesTabControl.TabPages.Add(errorTab);
                }
            }
        }

        /// <summary>
        /// Creates a smart truncated name for tab display
        /// </summary>
        private string CreateSmartTabName(string fileName)
        {
            var name = Path.GetFileNameWithoutExtension(fileName);
            
            // If the name is short enough, use it as-is
            if (name.Length <= 20)
            {
                return name;
            }
            
            // For longer names, try to keep meaningful parts
            // Check if it has common patterns like underscores
            if (name.Contains('_'))
            {
                var parts = name.Split('_');
                if (parts.Length >= 2)
                {
                    // Try to keep first and last meaningful parts
                    var firstPart = parts[0];
                    var lastPart = parts[parts.Length - 1];
                    
                    var combinedLength = firstPart.Length + lastPart.Length + 3; // +3 for "..."
                    if (combinedLength <= 20)
                    {
                        return $"{firstPart}...{lastPart}";
                    }
                }
            }
            
            // Fallback to simple truncation
            return name.Substring(0, 17) + "...";
        }

        /// <summary>
        /// Creates a tab for a specific CLS file
        /// </summary>
        private async Task CreateClsFileTab(string fileName, Dictionary<string, object> clsData)
        {
            var tabName = CreateSmartTabName(fileName);
            var fullName = Path.GetFileNameWithoutExtension(fileName);
            
            var tabPage = new TabPage(tabName);
            
            // Always set tooltip to show full filename
            tabPage.ToolTipText = fullName;

            // Create TreeView for this CLS file
            var treeView = new TreeView
            {
                Dock = DockStyle.Fill,
                Font = GlobalConstants.Fonts.DefaultFont,
                ShowLines = true,
                ShowPlusMinus = true,
                ShowRootLines = true,
                LabelEdit = true,
                BackColor = Color.White,
                BorderStyle = BorderStyle.None,
                FullRowSelect = true,
                HideSelection = false
            };

            // Enable double buffering for smooth scrolling
            var treeViewType = typeof(TreeView);
            var property = treeViewType.GetProperty("DoubleBuffered",
                System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Instance);
            property?.SetValue(treeView, true);

            // Add context menu for tree nodes
            var contextMenu = new ContextMenuStrip();
            var editMenuItem = new ToolStripMenuItem("Edit Value");
            editMenuItem.Click += (s, e) => EditNodeValue(treeView, fileName);
            contextMenu.Items.Add(editMenuItem);
            treeView.ContextMenuStrip = contextMenu;

            // Handle node events
            treeView.AfterLabelEdit += (s, e) => OnNodeAfterLabelEdit(s, e, fileName);
            treeView.NodeMouseDoubleClick += (s, e) => OnNodeDoubleClick(s, e, fileName);

            // Populate the tree
            await Task.Run(() => PopulateTreeView(treeView, clsData));

            tabPage.Controls.Add(treeView);
            _clsFilesTabControl.TabPages.Add(tabPage);
        }

        /// <summary>
        /// Populates the TreeView with CLS data
        /// </summary>
        private void PopulateTreeView(TreeView treeView, Dictionary<string, object> data)
        {
            if (treeView.InvokeRequired)
            {
                treeView.Invoke(new Action(() => PopulateTreeView(treeView, data)));
                return;
            }

            treeView.BeginUpdate();
            try
            {
                treeView.Nodes.Clear();

                foreach (var kvp in data)
                {
                    var node = CreateTreeNode(kvp.Key, kvp.Value, "");
                    treeView.Nodes.Add(node);
                }

                // Expand root nodes by default
                foreach (TreeNode node in treeView.Nodes)
                {
                    node.Expand();
                }
            }
            finally
            {
                treeView.EndUpdate();
            }
        }

        /// <summary>
        /// Creates a tree node for a property
        /// </summary>
        private TreeNode CreateTreeNode(string key, object? value, string parentPath)
        {
            var currentPath = string.IsNullOrEmpty(parentPath) ? key : $"{parentPath}.{key}";
            var node = new TreeNode();

            if (value is Dictionary<string, object> dict)
            {
                // Object node
                node.Text = $"{key} (Object)";
                node.Tag = new NodeData { Path = currentPath, Value = value, IsObject = true };
                node.ImageIndex = 0; // Folder icon
                node.SelectedImageIndex = 0;

                foreach (var kvp in dict)
                {
                    var childNode = CreateTreeNode(kvp.Key, kvp.Value, currentPath);
                    node.Nodes.Add(childNode);
                }
            }
            else if (value is Array array)
            {
                // Array node (System.Array)
                node.Text = $"{key} [Array - {array.Length} items]";
                node.Tag = new NodeData { Path = currentPath, Value = value, IsArray = true };
                node.ImageIndex = 1; // Array icon
                node.SelectedImageIndex = 1;

                for (int i = 0; i < array.Length; i++)
                {
                    var childNode = CreateTreeNode($"[{i}]", array.GetValue(i), currentPath);
                    node.Nodes.Add(childNode);
                }
            }
            else if (value is System.Collections.IList list)
            {
                // List/Collection node (including List<object>)
                node.Text = $"{key} [List - {list.Count} items]";
                node.Tag = new NodeData { Path = currentPath, Value = value, IsArray = true };
                node.ImageIndex = 1; // Array icon
                node.SelectedImageIndex = 1;

                for (int i = 0; i < list.Count; i++)
                {
                    var childNode = CreateTreeNode($"[{i}]", list[i], currentPath);
                    node.Nodes.Add(childNode);
                }
            }
            else if (value is System.Collections.IDictionary dict2)
            {
                // Dictionary node (generic dictionaries)
                node.Text = $"{key} [Dictionary - {dict2.Count} items]";
                node.Tag = new NodeData { Path = currentPath, Value = value, IsObject = true };
                node.ImageIndex = 0; // Folder icon
                node.SelectedImageIndex = 0;

                foreach (System.Collections.DictionaryEntry kvp in dict2)
                {
                    var childNode = CreateTreeNode(kvp.Key?.ToString() ?? "null", kvp.Value, currentPath);
                    node.Nodes.Add(childNode);
                }
            }
            else if (value is System.Collections.IEnumerable enumerable && !(value is string))
            {
                // Generic enumerable (fallback for other collection types)
                var items = enumerable.Cast<object>().ToArray();
                node.Text = $"{key} [Collection - {items.Length} items]";
                node.Tag = new NodeData { Path = currentPath, Value = value, IsArray = true };
                node.ImageIndex = 1; // Array icon
                node.SelectedImageIndex = 1;

                for (int i = 0; i < items.Length; i++)
                {
                    var childNode = CreateTreeNode($"[{i}]", items[i], currentPath);
                    node.Nodes.Add(childNode);
                }
            }
            else
            {
                // Value node (primitives, strings, etc.)
                var displayValue = value?.ToString() ?? "null";
                var valueType = value?.GetType().Name ?? "null";
                node.Text = $"{key}: {displayValue} ({valueType})";
                node.Tag = new NodeData { Path = currentPath, Value = value, IsValue = true };
                node.ImageIndex = 2; // Property icon
                node.SelectedImageIndex = 2;
            }

            return node;
        }

        /// <summary>
        /// Handles node double-click for editing
        /// </summary>
        private void OnNodeDoubleClick(object? sender, TreeNodeMouseClickEventArgs e, string fileName)
        {
            if (e.Node.Tag is NodeData nodeData && nodeData.IsValue)
            {
                EditNodeValue((TreeView)sender!, fileName, e.Node);
            }
        }

        /// <summary>
        /// Handles after label edit
        /// </summary>
        private void OnNodeAfterLabelEdit(object? sender, NodeLabelEditEventArgs e, string fileName)
        {
            if (e.Label == null || e.Node?.Tag is not NodeData nodeData || !nodeData.IsValue)
            {
                e.CancelEdit = true;
                return;
            }

            try
            {
                // Extract the new value from the label
                var newLabel = e.Label;
                var colonIndex = newLabel.IndexOf(':');
                if (colonIndex > 0 && colonIndex < newLabel.Length - 1)
                {
                    var valuePart = newLabel.Substring(colonIndex + 1).Trim();
                    var parenIndex = valuePart.LastIndexOf('(');
                    if (parenIndex > 0)
                    {
                        valuePart = valuePart.Substring(0, parenIndex).Trim();
                    }

                    // Convert the value to the appropriate type
                    var oldValue = nodeData.Value;
                    object? newValue;

                    // Check if this is a numeric type and use smart parsing
                    if (UIUtils.IsNumericType(oldValue?.GetType()))
                    {
                        newValue = UIUtils.TryParseNumericValue(valuePart);
                        
                        if (newValue == null && string.IsNullOrEmpty(valuePart))
                        {
                            if (oldValue is double || oldValue is float || oldValue is decimal)
                            {
                                newValue = 0.0;
                            }
                            else
                            {
                                newValue = 0;
                            }
                        }
                    }
                    else
                    {
                        // Use original conversion logic for non-numeric types
                        newValue = ConvertStringToType(valuePart, oldValue?.GetType());
                    }

                    if (newValue != null || oldValue == null)
                    {
                        // Update the value
                        OnClsPropertyChanged(fileName, nodeData.Path, newValue, oldValue);
                    }
                    else
                    {
                        e.CancelEdit = true;
                        MessageBox.Show($"Invalid value format for type {oldValue?.GetType().Name}",
                                      "Invalid Value", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }
                }
                else
                {
                    e.CancelEdit = true;
                }
            }
            catch (Exception ex)
            {
                e.CancelEdit = true;
                MessageBox.Show($"Error updating value: {ex.Message}",
                              "Update Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        /// <summary>
        /// Shows edit dialog for node value
        /// </summary>
        private void EditNodeValue(TreeView treeView, string fileName, TreeNode? selectedNode = null)
        {
            var node = selectedNode ?? treeView.SelectedNode;
            if (node?.Tag is not NodeData nodeData || !nodeData.IsValue)
            {
                MessageBox.Show("Please select a property value to edit.", "No Value Selected",
                              MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            using var form = new Form
            {
                Text = "Edit Property Value",
                Size = new Size(450, 220),
                StartPosition = FormStartPosition.CenterParent,
                FormBorderStyle = FormBorderStyle.FixedDialog,
                MaximizeBox = false,
                MinimizeBox = false
            };

            var labelPath = new Label
            {
                Text = $"Path: {nodeData.Path}",
                Location = new Point(10, 15),
                Size = new Size(410, 20),
                Font = GlobalConstants.Fonts.DefaultBoldFont
            };

            var labelType = new Label
            {
                Text = $"Type: {nodeData.Value?.GetType().Name ?? "null"}",
                Location = new Point(10, 40),
                Size = new Size(410, 20)
            };

            var labelValue = new Label
            {
                Text = "New Value:",
                Location = new Point(10, 70),
                Size = new Size(80, 20)
            };

            // Determine if this is a numeric value and create appropriate TextBox
            var isNumeric = UIUtils.IsNumericType(nodeData.Value?.GetType());
            TextBox textBoxValue;
            
            if (isNumeric)
            {
                // Create numeric TextBox with validation
                textBoxValue = UIUtils.CreateNumericTextBox(
                    new Point(100, 68),
                    new Size(320, 20),
                    nodeData.Value);
                
                textBoxValue.ForeColor = GlobalConstants.Colors.TextPrimary;
                
                var helpLabel = new Label
                {
                    Text = "💡 This field accepts integers (42) or decimals (42.5). Type conversion between int/double is automatic.",
                    Location = new Point(10, 95),
                    Size = new Size(410, 30),
                    Font = GlobalConstants.Fonts.SmallFont,
                    ForeColor = Color.FromArgb(100, 100, 100)
                };
                form.Controls.Add(helpLabel);
                
                form.Size = new Size(450, 250);
            }
            else
            {
                // Create regular TextBox for non-numeric values
                textBoxValue = new TextBox
                {
                    Location = new Point(100, 68),
                    Size = new Size(320, 20),
                    Text = nodeData.Value?.ToString() ?? string.Empty,
                    Font = GlobalConstants.Fonts.DefaultFont
                };
            }

            var btnOK = new Button
            {
                Text = "OK",
                Location = new Point(265, isNumeric ? 150 : 120),
                Size = new Size(75, 25),
                DialogResult = DialogResult.OK
            };

            var btnCancel = new Button
            {
                Text = "Cancel",
                Location = new Point(345, isNumeric ? 150 : 120),
                Size = new Size(75, 25),
                DialogResult = DialogResult.Cancel
            };

            form.Controls.AddRange(new Control[] { labelPath, labelType, labelValue, textBoxValue, btnOK, btnCancel });
            form.AcceptButton = btnOK;
            form.CancelButton = btnCancel;

            if (form.ShowDialog() == DialogResult.OK)
            {
                try
                {
                    var oldValue = nodeData.Value;
                    object? newValue;

                    if (isNumeric)
                    {
                        // For numeric types, use smart parsing
                        newValue = UIUtils.TryParseNumericValue(textBoxValue.Text);
                        
                        if (newValue == null && !string.IsNullOrEmpty(textBoxValue.Text))
                        {
                            MessageBox.Show($"Invalid numeric value: '{textBoxValue.Text}'\n\nPlease enter a valid number (integer or decimal).",
                                          GlobalConstants.Messages.InvalidInput, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                            return;
                        }
                    }
                    else
                    {
                        // For non-numeric types, use the original conversion logic
                        newValue = ConvertStringToType(textBoxValue.Text, oldValue?.GetType());
                    }

                    if (newValue != null || oldValue == null)
                    {
                        OnClsPropertyChanged(fileName, nodeData.Path, newValue, oldValue);
                    }
                    else
                    {
                        MessageBox.Show($"Invalid value format for type {oldValue?.GetType().Name}",
                                      "Invalid Value", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"Error updating value: {ex.Message}",
                                  "Update Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        /// <summary>
        /// Converts string value to appropriate type
        /// </summary>
        private object? ConvertStringToType(string value, Type? targetType)
        {
            if (string.IsNullOrEmpty(value))
                return null;

            if (targetType == null)
                return value;

            try
            {
                if (targetType == typeof(string))
                    return value;
                else if (targetType == typeof(bool))
                    return bool.Parse(value);
                else if (UIUtils.IsNumericType(targetType))
                {
                    var numericValue = UIUtils.TryParseNumericValue(value);
                    if (numericValue != null)
                    {
                        // Convert to the target type if possible
                        if (targetType == typeof(int) && numericValue is long longVal && longVal >= int.MinValue && longVal <= int.MaxValue)
                            return (int)longVal;
                        else if (targetType == typeof(long))
                            return Convert.ToInt64(numericValue);
                        else if (targetType == typeof(float))
                            return Convert.ToSingle(numericValue);
                        else if (targetType == typeof(double))
                            return Convert.ToDouble(numericValue);
                        else if (targetType == typeof(decimal))
                            return Convert.ToDecimal(numericValue);
                        else if (targetType == typeof(short))
                            return Convert.ToInt16(numericValue);
                        else if (targetType == typeof(byte))
                            return Convert.ToByte(numericValue);
                        else if (targetType == typeof(sbyte))
                            return Convert.ToSByte(numericValue);
                        else if (targetType == typeof(uint))
                            return Convert.ToUInt32(numericValue);
                        else if (targetType == typeof(ulong))
                            return Convert.ToUInt64(numericValue);
                        else if (targetType == typeof(ushort))
                            return Convert.ToUInt16(numericValue);
                        else
                            return numericValue; // Return as-is for compatible types
                    }
                    return null;
                }
                else if (targetType.IsEnum)
                    return Enum.Parse(targetType, value);
                else
                    return Convert.ChangeType(value, targetType);
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Type conversion failed for value '{value}' to type '{targetType.Name}': {ex.Message}");
                return null;
            }
        }

        /// <summary>
        /// Handles property value changes
        /// </summary>
        private void OnClsPropertyChanged(string fileName, string path, object? newValue, object? oldValue)
        {
            try
            {
                if (!_clsParsers.ContainsKey(fileName) || !_clsFilesData.ContainsKey(fileName))
                    return;

                var clsParser = _clsParsers[fileName];
                var clsData = _clsFilesData[fileName];

                // Generate current CLS content and parse it to get a fresh parser state
                var currentCls = clsParser.Generate(clsData);
                clsParser.Parse(currentCls);

                // Update the value in the parser
                bool updateSuccessful = false;
                
                if (newValue != null)
                {
                    updateSuccessful = clsParser.SetValue(path, newValue);
                }
                else
                {
                    try
                    {
                        updateSuccessful = clsParser.SetValue(path, newValue);
                    }
                    catch
                    {
                        if (oldValue is string)
                        {
                            updateSuccessful = clsParser.SetValue(path, string.Empty);
                        }
                        else
                        {
                            updateSuccessful = false;
                        }
                    }
                }

                if (updateSuccessful)
                {
                    // Get the updated data
                    var updatedData = clsParser.GetParsedData();
                    _clsFilesData[fileName] = updatedData;

                    // Refresh the tree view for this file
                    RefreshTreeViewForFile(fileName, updatedData);

                    // Fire the change event
                    ClsPropertyChanged?.Invoke(this, new ClsPropertyChangedEventArgs
                    {
                        ClsFileName = fileName,
                        PropertyPath = path,
                        NewValue = newValue,
                        OldValue = oldValue,
                        UpdatedClsData = updatedData
                    });
                }
                else
                {
                    MessageBox.Show($"Failed to update property '{path}' in file '{fileName}'.\n\nThis might be because:\n• The property path doesn't exist\n• The value type is incompatible\n• The property is read-only",
                                  "Update Failed", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error updating property: {ex.Message}\n\nPath: {path}\nFile: {fileName}",
                              "Update Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        /// <summary>
        /// Refreshes the TreeView for a specific file
        /// </summary>
        private void RefreshTreeViewForFile(string fileName, Dictionary<string, object> updatedData)
        {
            var tabName = CreateSmartTabName(fileName);
            
            foreach (TabPage tabPage in _clsFilesTabControl.TabPages)
            {
                // Check both smart tab name and full name to find the correct tab
                var fullName = Path.GetFileNameWithoutExtension(fileName);
                if ((tabPage.Text == tabName || tabPage.ToolTipText == fullName) && 
                    tabPage.Controls.Count > 0 && tabPage.Controls[0] is TreeView treeView)
                {
                    // Store the expanded state
                    var expandedPaths = new HashSet<string>();
                    StoreExpandedState(treeView.Nodes, expandedPaths, "");

                    // Store the selected node path for potential restoration
                    string? selectedNodePath = null;
                    if (treeView.SelectedNode?.Tag is NodeData selectedNodeData)
                    {
                        selectedNodePath = selectedNodeData.Path;
                    }

                    // Repopulate the tree
                    PopulateTreeView(treeView, updatedData);

                    // Restore the expanded state
                    RestoreExpandedState(treeView.Nodes, expandedPaths, "");
                    
                    break;
                }
            }
        }

        /// <summary>
        /// Stores the expanded state of tree nodes
        /// </summary>
        private void StoreExpandedState(TreeNodeCollection nodes, HashSet<string> expandedPaths, string parentPath)
        {
            foreach (TreeNode node in nodes)
            {
                if (node.Tag is NodeData nodeData)
                {
                    if (node.IsExpanded)
                    {
                        expandedPaths.Add(nodeData.Path);
                    }
                    StoreExpandedState(node.Nodes, expandedPaths, nodeData.Path);
                }
            }
        }

        /// <summary>
        /// Restores the expanded state of tree nodes
        /// </summary>
        private void RestoreExpandedState(TreeNodeCollection nodes, HashSet<string> expandedPaths, string parentPath)
        {
            foreach (TreeNode node in nodes)
            {
                if (node.Tag is NodeData nodeData)
                {
                    if (expandedPaths.Contains(nodeData.Path))
                    {
                        node.Expand();
                    }
                    RestoreExpandedState(node.Nodes, expandedPaths, nodeData.Path);
                }
            }
        }

        /// <summary>
        /// Gets all modified CLS file data
        /// </summary>
        public Dictionary<string, Dictionary<string, object>> GetAllClsData()
        {
            return new Dictionary<string, Dictionary<string, object>>(_clsFilesData);
        }

        /// <summary>
        /// Data structure for tree node information
        /// </summary>
        private class NodeData
        {
            public string Path { get; set; } = string.Empty;
            public object? Value { get; set; }
            public bool IsObject { get; set; }
            public bool IsArray { get; set; }
            public bool IsValue { get; set; }
            
            /// <summary>
            /// Gets whether this node represents a collection (array, list, etc.)
            /// </summary>
            public bool IsCollection => IsArray || Value is System.Collections.IEnumerable && !(Value is string);
            
            /// <summary>
            /// Gets whether this node represents a dictionary or object
            /// </summary>
            public bool IsDictionary => IsObject || Value is System.Collections.IDictionary;
        }
    }
}
