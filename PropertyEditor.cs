using ClsParser.Library;
using System.ComponentModel;
using System.Text;
using System.Globalization;

namespace RoadCraft_Vehicle_Editor_v2___new_edition
{
    public class PropertyChangedEventArgs : EventArgs
    {
        public string PropertyPath { get; set; } = string.Empty;
        public object? NewValue { get; set; }
        public object? OldValue { get; set; }
        public Dictionary<string, object>? UpdatedVehicleData { get; set; }
    }

    public class PropertyEditor : UserControl
    {
        private ClsFileParser _clsParser;
        private Dictionary<string, object>? _vehicleData;
        private string _vehicleName = string.Empty;
        private Dictionary<string, Control> _propertyControls = new Dictionary<string, Control>();
        private Panel _containerPanel = null!;
        
        // Performance optimization: cache fonts to avoid repeated creation/disposal
        private static readonly Font _headerFont = new Font(GlobalConstants.Fonts.PrimaryFontFamily, GlobalConstants.Fonts.HeaderFontSize, FontStyle.Bold);
        private static readonly Font _subHeaderFont = new Font(GlobalConstants.Fonts.PrimaryFontFamily, GlobalConstants.Fonts.SubHeaderFontSize, FontStyle.Bold);
        private static readonly Font _defaultFont = new Font(GlobalConstants.Fonts.PrimaryFontFamily, GlobalConstants.Fonts.DefaultFontSize);
        private static readonly Font _tableFont = new Font(GlobalConstants.Fonts.PrimaryFontFamily, GlobalConstants.Fonts.TableFontSize);
        private static readonly Font _tableFontBold = new Font(GlobalConstants.Fonts.PrimaryFontFamily, GlobalConstants.Fonts.TableFontSize, FontStyle.Bold);
        
        // Performance optimization: debounce text input changes
        private readonly Dictionary<string, System.Windows.Forms.Timer> _textChangeTimers = new Dictionary<string, System.Windows.Forms.Timer>();
        private readonly Dictionary<string, object?> _pendingTextChanges = new Dictionary<string, object?>();
        
        // Performance optimization: cache parsed CLS data to avoid repeated parsing
        private string? _cachedClsString;
        private bool _isClsDataCached = false;
        private bool _isUpdating = false;
        
        // Debug mode control - make verbose debugging optional
        public static bool EnableVerboseDebug { get; set; } = false;

        public event EventHandler<PropertyChangedEventArgs>? PropertyChanged;
        
        public PropertyEditor()
        {
            _clsParser = new ClsFileParser();
            
            // Enable double buffering for PropertyEditor
            SetStyle(ControlStyles.DoubleBuffer | ControlStyles.AllPaintingInWmPaint | 
                     ControlStyles.UserPaint | ControlStyles.ResizeRedraw, true);
            
            InitializeComponent();
        }
        
        private void InitializeComponent()
        {
            this.SuspendLayout();
            
            // Create a container panel for better layout management with improved styling
            _containerPanel = new Panel
            {
                Dock = DockStyle.Fill,
                AutoScroll = true,
                BackColor = GlobalConstants.Colors.BackgroundLight,
                Padding = new Padding(15, 10, 15, 10)
            };
            
            // Enable double buffering for the container panel as well
            var panelType = typeof(Panel);
            var property = panelType.GetProperty("DoubleBuffered", 
                System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Instance);
            property?.SetValue(_containerPanel, true);
            
            this.Controls.Add(_containerPanel);
            
            this.BackColor = GlobalConstants.Colors.BackgroundLight;
            
            // Handle resize events to adjust control widths
            this.Resize += PropertyEditor_Resize;
            _containerPanel.Resize += ContainerPanel_Resize;
            
            this.ResumeLayout(false);
        }
        
        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                // Critical Fix: Memory leak prevention - properly dispose all timers
                foreach (var timer in _textChangeTimers.Values)
                {
                    timer?.Stop();
                    timer?.Dispose();
                }
                _textChangeTimers.Clear();
                _pendingTextChanges.Clear();
                
                // Dispose property controls that implement IDisposable
                foreach (var control in _propertyControls.Values)
                {
                    if (control is IDisposable disposableControl)
                    {
                        disposableControl.Dispose();
                    }
                }
                _propertyControls.Clear();
                
                // Note: Static fonts are not disposed since they're shared across all instances
                // They will be disposed when the application exits
            }
            base.Dispose(disposing);
        }

        /// <summary>
        /// Dispose static fonts when the application shuts down (call from Program.cs)
        /// </summary>
        public static void DisposeSharedResources()
        {
            _headerFont?.Dispose();
            _subHeaderFont?.Dispose();
            _defaultFont?.Dispose();
            _tableFont?.Dispose();
            _tableFontBold?.Dispose();
        }
        
        private void PropertyEditor_Resize(object? sender, EventArgs e)
        {
            // Update control widths when the parent resizes
            UpdateControlWidths();
        }
        
        private void ContainerPanel_Resize(object? sender, EventArgs e)
        {
            // Update control widths when the container panel resizes
            UpdateControlWidths();
        }
        
        private void UpdateControlWidths()
        {
            if (_containerPanel == null) return;

            // Calculate new control widths based on available space (using GlobalConstants)
            int availableWidth = Math.Max(400, _containerPanel.Width - 40);
            int labelWidth = Math.Min(GlobalConstants.LabelWidth, availableWidth / 3);
            int controlWidth = Math.Max(200, availableWidth - labelWidth - GlobalConstants.ControlSpacing * 2);

            // Update separator widths and control positioning
            foreach (Control control in _containerPanel.Controls)
            {
                if (control is Panel && control.Height == GlobalConstants.SeparatorHeight) // Separator
                {
                    control.Width = availableWidth;
                }
                else if (control is Panel containerPanel && containerPanel.Height > 10) // Property container panels
                {
                    // Fix container panel width to prevent off-screen stretching
                    containerPanel.Width = Math.Max(600, availableWidth);
                    
                    // Update controls inside the container panel
                    foreach (Control childControl in containerPanel.Controls)
                    {
                        if (childControl is TextBox || childControl is ComboBox || childControl is NumericUpDown)
                        {
                            // Update controls that need to be resizable
                            if (childControl.Anchor.HasFlag(AnchorStyles.Right))
                            {
                                childControl.Width = controlWidth;
                            }
                        }
                    }
                }
            }
        }
        
        private int CalculateOptimalComboBoxWidth(ComboBox comboBox, int minWidth = 100, int maxWidth = 300)
        {
            int maxTextWidth = minWidth;
            
            // Critical Fix: Use Graphics.FromHwnd instead of CreateGraphics to avoid memory leaks
            using (var g = Graphics.FromHwnd(comboBox.Handle))
            {
                foreach (var item in comboBox.Items)
                {
                    var textSize = g.MeasureString(item.ToString() ?? "", comboBox.Font);
                    maxTextWidth = Math.Max(maxTextWidth, (int)textSize.Width);
                }
            }
            
            // Add padding for dropdown arrow and borders (approximately 25 pixels)
            maxTextWidth += GlobalConstants.CellPadding + 5;
            
            // Constrain to min/max bounds
            return Math.Max(minWidth, Math.Min(maxWidth, maxTextWidth));
        }
        
        private ComboBox CreateStyledComboBox(Point location, int baseWidth, int height, string[] options)
        {
            var comboBox = new ComboBox
            {
                Location = location,
                Size = new Size(baseWidth, height),
                DropDownStyle = ComboBoxStyle.DropDownList,
                Font = _defaultFont, // Use cached font
                FlatStyle = FlatStyle.Standard,
                BackColor = GlobalConstants.Colors.BackgroundMedium,
                ForeColor = GlobalConstants.Colors.TextPrimary,
                Anchor = AnchorStyles.Top | AnchorStyles.Left
            };
            
            // Add items first
            comboBox.Items.AddRange(options);
            
            // Calculate optimal width based on content
            int optimalWidth = CalculateOptimalComboBoxWidth(comboBox, 100, 300);
            comboBox.Width = optimalWidth;
            
            // Add visual styling
            comboBox.Paint += (s, e) => {
                // Draw a subtle border around the ComboBox for better visibility
                using (var pen = new Pen(GlobalConstants.Colors.BorderMedium, 1))
                {
                    e.Graphics.DrawRectangle(pen, 0, 0, comboBox.Width - 1, comboBox.Height - 1);
                }
            };
            
            return comboBox;
        }
        
        private ComboBox CreateStyledTableComboBox(Point location, int baseWidth, int height, string[] options)
        {
            var comboBox = new ComboBox
            {
                Location = location,
                Size = new Size(baseWidth, height),
                DropDownStyle = ComboBoxStyle.DropDownList,
                Font = _tableFont, // Use cached font
                FlatStyle = FlatStyle.Standard,
                BackColor = GlobalConstants.Colors.BackgroundMedium,
                ForeColor = GlobalConstants.Colors.TextPrimary,
                Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right
            };
            
            // Add items first
            comboBox.Items.AddRange(options);
            
            // Calculate optimal width based on content, but constrain for table cells
            int optimalWidth = CalculateOptimalComboBoxWidth(comboBox, 80, Math.Max(baseWidth, 150));
            comboBox.Width = Math.Min(optimalWidth, baseWidth);
            
            // Add visual styling
            comboBox.Paint += (s, e) => {
                using (var pen = new Pen(GlobalConstants.Colors.BorderMedium, 1))
                {
                    e.Graphics.DrawRectangle(pen, 0, 0, comboBox.Width - 1, comboBox.Height - 1);
                }
            };
            
            return comboBox;
        }
        
        public void LoadProperties(string vehicleName, Dictionary<string, object> vehicleData)
        {
            _vehicleName = vehicleName;
            _vehicleData = vehicleData;
            
            // Clear existing controls
            _containerPanel.Controls.Clear();
            _propertyControls.Clear();
            
            // Clear cache when loading new data
            _cachedClsString = null;
            _isClsDataCached = false;
            
            // Clean up existing timers (memory fix)
            foreach (var timer in _textChangeTimers.Values)
            {
                timer?.Stop();
                timer?.Dispose();
            }
            _textChangeTimers.Clear();
            _pendingTextChanges.Clear();

            // Get categorized properties for this vehicle - only include existing paths
            var categorizedProperties = Properties.GetCategorizedProperties(vehicleName, vehicleData);

            int yPosition = 10;
            
            foreach (var category in categorizedProperties)
            {
                // Add category header with improved styling (using cached fonts)
                var categoryLabel = new Label
                {
                    Text = $"▸ {category.Key}",
                    Font = _headerFont, // Use cached font
                    Location = new Point(15, yPosition),
                    AutoSize = true,
                    ForeColor = GlobalConstants.Colors.TextPrimary,
                    BackColor = Color.Transparent,
                    Anchor = AnchorStyles.Top | AnchorStyles.Left
                };
                _containerPanel.Controls.Add(categoryLabel);
                yPosition += 38;

                // Add improved separator line (using GlobalConstants)
                var separator = new Panel
                {
                    Height = GlobalConstants.SeparatorHeight,
                    BackColor = GlobalConstants.Colors.BorderDark,
                    Location = new Point(15, yPosition),
                    Width = Math.Max(400, _containerPanel.Width - 50),
                    Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right
                };
                _containerPanel.Controls.Add(separator);
                yPosition += GlobalConstants.ControlSpacing;

                // Add properties in this category
                foreach (var property in category.Value)
                {
                    yPosition += CreatePropertyControl(property, yPosition);
                }

                yPosition += GlobalConstants.CategorySpacing; // Space between categories
            }
        }
        
        public void LoadPropertiesForCategory(string vehicleName, Dictionary<string, object> vehicleData, string category)
        {
            _vehicleName = vehicleName;
            _vehicleData = vehicleData;
            
            // Clear existing controls
            _containerPanel.Controls.Clear();
            _propertyControls.Clear();
            
            // Clear cache when loading new data
            _cachedClsString = null;
            _isClsDataCached = false;
            
            // Clean up existing timers (memory fix)
            foreach (var timer in _textChangeTimers.Values)
            {
                timer?.Stop();
                timer?.Dispose();
            }
            _textChangeTimers.Clear();
            _pendingTextChanges.Clear();

            // Get properties for this vehicle and category - only include existing paths
            var properties = Properties.GetPropertiesForVehicle(vehicleName, vehicleData)
                                    .Where(p => p.Category == category)
                                    .ToList();

            int yPosition = 10;
            
            // Group properties by TableGroup for table layout
            var tableGroups = properties.Where(p => p.UsesTableLayout())
                                       .GroupBy(p => p.TableGroup)
                                       .ToDictionary(g => g.Key!, g => g.ToList());
            
            var processedProperties = new HashSet<VehicleProperty>();
            
            // Add properties in this category
            foreach (var property in properties)
            {
                if (processedProperties.Contains(property))
                    continue;
                
                if (property.UsesTableLayout() && tableGroups.ContainsKey(property.TableGroup!))
                {
                    // Create table layout for this group
                    var groupProperties = tableGroups[property.TableGroup!];
                    yPosition += CreateTableLayout(groupProperties, yPosition);
                    
                    // Mark all properties in this group as processed
                    foreach (var groupProperty in groupProperties)
                    {
                        processedProperties.Add(groupProperty);
                    }
                }
                else
                {
                    // Create individual property control
                    yPosition += CreatePropertyControl(property, yPosition);
                    processedProperties.Add(property);
                }
            }

            // If no properties in this category, show message
            if (properties.Count == 0)
            {
                var noPropertiesPanel = new Panel
                {
                    Location = new Point(10, yPosition),
                    Size = new Size(Math.Max(400, _containerPanel.Width - 40), 60),
                    BackColor = GlobalConstants.Colors.WarningBackground,
                    Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right,
                    Padding = new Padding(GlobalConstants.CellPadding)
                };

                // Add subtle border
                noPropertiesPanel.Paint += (s, e) => {
                    var pen = new Pen(GlobalConstants.Colors.Warning, 1);
                    e.Graphics.DrawRectangle(pen, 0, 0, noPropertiesPanel.Width - 1, noPropertiesPanel.Height - 1);
                };

                var noPropertiesLabel = new Label
                {
                    Text = $"▸ No properties available in the '{category}' category",
                    Location = new Point(15, 18),
                    AutoSize = true,
                    Font = _defaultFont, // Use cached font
                    ForeColor = Color.FromArgb(92, 74, 10), // Keep this specific warning text color
                    BackColor = Color.Transparent,
                    Anchor = AnchorStyles.Top | AnchorStyles.Left
                };
                noPropertiesPanel.Controls.Add(noPropertiesLabel);
                _containerPanel.Controls.Add(noPropertiesPanel);
            }
        }
        
        public void UpdateVehicleData(Dictionary<string, object> vehicleData)
        {
            if (_isUpdating) return; // Prevent recursive updates
            
            _vehicleData = vehicleData;
            
            // Clear cache when data is updated
            _cachedClsString = null;
            _isClsDataCached = false;
            
            // Suspend layout updates to prevent flicker
            _containerPanel.SuspendLayout();
            
            try
            {
                _isUpdating = true;
                
                // Update all property controls with the new values
                foreach (var kvp in _propertyControls)
                {
                    var path = kvp.Key;
                    var control = kvp.Value;
                    var currentValue = GetPropertyValue(path);
                    
                    UpdateControlValue(control, currentValue);
                }
            }
            finally
            {
                _isUpdating = false;
                _containerPanel.ResumeLayout();
            }
        }
        
        private void UpdateControlValue(Control control, object? value)
        {
            // Temporarily disable events to prevent recursive calls
            try
            {
                switch (control)
                {
                    case Label label:
                        label.Text = value?.ToString() ?? string.Empty;
                        break;
                    case TextBox textBox:
                        textBox.TextChanged -= OnTextBoxChanged;
                        textBox.Text = value?.ToString() ?? string.Empty;
                        textBox.TextChanged += OnTextBoxChanged;
                        // Reset background color in case it was showing error state
                        if (textBox.BackColor == GlobalConstants.Colors.ErrorBackground)
                        {
                            textBox.BackColor = Color.White;
                        }
                        break;
                    case ComboBox comboBox:
                        comboBox.SelectedIndexChanged -= OnComboBoxChanged;
                        comboBox.SelectedItem = value?.ToString();
                        comboBox.SelectedIndexChanged += OnComboBoxChanged;
                        break;
                    case NumericUpDown numericUpDown:
                        // Keep this for backward compatibility if any NumericUpDown controls remain
                        numericUpDown.ValueChanged -= OnNumericUpDownChanged;
                        numericUpDown.TextChanged -= OnNumericUpDownTextChanged;
                        
                        if (value != null)
                        {
                            if (decimal.TryParse(value.ToString(), out decimal decValue))
                            {
                                numericUpDown.Value = Math.Max(numericUpDown.Minimum, Math.Min(numericUpDown.Maximum, decValue));
                            }
                        }
                        
                        numericUpDown.ValueChanged += OnNumericUpDownChanged;
                        numericUpDown.TextChanged += OnNumericUpDownTextChanged;
                        break;
                    case CheckBox checkBox:
                        checkBox.CheckedChanged -= OnCheckBoxChanged;
                        if (value != null && bool.TryParse(value.ToString(), out bool boolValue))
                        {
                            checkBox.Checked = boolValue;
                        }
                        checkBox.CheckedChanged += OnCheckBoxChanged;
                        break;
                }
            }
            catch
            {
                // Ignore errors during control value updates
            }
        }
        
        // Event handler placeholders for the event management (Memory fix - proper cleanup)
        private void OnTextBoxChanged(object? sender, EventArgs e) { }
        private void OnComboBoxChanged(object? sender, EventArgs e) { }
        private void OnNumericUpDownChanged(object? sender, EventArgs e) { }
        private void OnNumericUpDownTextChanged(object? sender, EventArgs e) { }
        private void OnCheckBoxChanged(object? sender, EventArgs e) { }
        
        private void OnPropertyValueChanged(VehicleProperty property, object? newValue, bool useDebounce)
        {
            if (_vehicleData == null || _isUpdating) return;

            // Convert to the original path-based method for debouncing logic
            string keyForDebouncing = property.Path;
                                                                
            if (useDebounce)
            {
                // Handle debounced updates (for text input) - using GlobalConstants
                _pendingTextChanges[keyForDebouncing] = newValue;
                
                // Reset or create timer for this property
                if (_textChangeTimers.ContainsKey(keyForDebouncing))
                {
                    _textChangeTimers[keyForDebouncing].Stop();
                    _textChangeTimers[keyForDebouncing].Start();
                }
                else
                {
                    var timer = new System.Windows.Forms.Timer();
                    timer.Interval = GlobalConstants.TextChangeDelay;
                    timer.Tick += (s, e) => {
                        timer.Stop();
                        if (_pendingTextChanges.ContainsKey(keyForDebouncing))
                        {
                            var pendingValue = _pendingTextChanges[keyForDebouncing];
                            _pendingTextChanges.Remove(keyForDebouncing);
                            ProcessPropertyValueChange(property, pendingValue);
                        }
                    };
                    _textChangeTimers[keyForDebouncing] = timer;
                    timer.Start();
                }
            }
            else
            {
                // Handle immediate updates (for dropdown, checkbox, numeric up/down arrows)
                // Cancel any pending debounced update for this property
                if (_textChangeTimers.ContainsKey(keyForDebouncing))
                {
                    _textChangeTimers[keyForDebouncing].Stop();
                    _pendingTextChanges.Remove(keyForDebouncing);
                }
                
                ProcessPropertyValueChange(property, newValue);
            }
        }
        
        private object? GetPropertyValue(string path)
        {
            if (_vehicleData == null || _vehicleData.Count == 0) return null;

            try
            {
                if (EnableVerboseDebug)
                {
                    System.Diagnostics.Debug.WriteLine($"=== GetPropertyValue called for path: {path} ===");
                }
                
                // Use cached CLS data if available
                if (!_isClsDataCached)
                {
                    if (EnableVerboseDebug)
                    {
                        System.Diagnostics.Debug.WriteLine($"=== About to Generate CLS for vehicle: {_vehicleName} ===");
                    }
                    _cachedClsString = _clsParser.Generate(_vehicleData);
                    
                    // Check if generated string is valid before parsing
                    if (string.IsNullOrWhiteSpace(_cachedClsString))
                    {
                        System.Diagnostics.Debug.WriteLine($"Generate returned empty string for vehicle data with {_vehicleData.Count} entries");
                        return null;
                    }
                    
                    if (EnableVerboseDebug)
                    {
                        System.Diagnostics.Debug.WriteLine($"=== About to Parse generated CLS for vehicle: {_vehicleName} ===");
                        System.Diagnostics.Debug.WriteLine($"Generated CLS length: {_cachedClsString.Length}");
                        System.Diagnostics.Debug.WriteLine($"First 300 chars: {_cachedClsString.Substring(0, Math.Min(300, _cachedClsString.Length))}");
                    }
                    
                    _clsParser.Parse(_cachedClsString);
                    _isClsDataCached = true;
                    if (EnableVerboseDebug)
                    {
                        System.Diagnostics.Debug.WriteLine($"=== Successfully parsed CLS for vehicle: {_vehicleName} ===");
                    }
                }
                
                if (EnableVerboseDebug)
                {
                    System.Diagnostics.Debug.WriteLine($"=== About to Query path: {path} ===");
                }
                var result = _clsParser.Query(path);
                if (EnableVerboseDebug)
                {
                    System.Diagnostics.Debug.WriteLine($"=== Query result for path '{path}': {result?.ToString() ?? "null"} ===");
                }
                
                return result;
            }
            catch (Exception ex)
            {
                if (EnableVerboseDebug)
                {
                    System.Diagnostics.Debug.WriteLine($"=== EXCEPTION in GetPropertyValue ===");
                    System.Diagnostics.Debug.WriteLine($"Path: {path}");
                    System.Diagnostics.Debug.WriteLine($"Vehicle: {_vehicleName}");
                    System.Diagnostics.Debug.WriteLine($"Exception: {ex.GetType().Name}: {ex.Message}");
                    System.Diagnostics.Debug.WriteLine($"Stack Trace: {ex.StackTrace}");
                }
                return null;
            }
        }
        
        private object? GetPropertyValue(VehicleProperty property)
        {
            if (_vehicleData == null || _vehicleData.Count == 0) return null;

            try
            {
                string? pathToQuery;
                
                // If this property uses array filtering, resolve the actual path
                if (property.UsesArrayFiltering())
                {
                    pathToQuery = property.ResolveFilteredPath(_vehicleData);
                    if (pathToQuery == null)
                    {
                        if (EnableVerboseDebug)
                        {
                            System.Diagnostics.Debug.WriteLine($"=== Failed to resolve filtered path for property: {property.DisplayName} ===");
                        }
                        return null;
                    }
                    
                    if (EnableVerboseDebug)
                    {
                        System.Diagnostics.Debug.WriteLine($"=== Resolved filtered path '{property.Path}' to '{pathToQuery}' ===");
                    }
                }
                else
                {
                    pathToQuery = property.Path;
                }
                
                return GetPropertyValue(pathToQuery);
            }
            catch (Exception ex)
            {
                if (EnableVerboseDebug)
                {
                    System.Diagnostics.Debug.WriteLine($"=== EXCEPTION in GetPropertyValue (VehicleProperty) ===");
                    System.Diagnostics.Debug.WriteLine($"Property: {property.DisplayName}");
                    System.Diagnostics.Debug.WriteLine($"Path: {property.Path}");
                    System.Diagnostics.Debug.WriteLine($"Exception: {ex.GetType().Name}: {ex.Message}");
                }
                return null;
            }
        }
        
        private void ProcessPropertyValueChange(VehicleProperty property, object? newValue)
        {
            if (_vehicleData == null || _isUpdating || _vehicleData.Count == 0) return;

            if (EnableVerboseDebug)
            {
                System.Diagnostics.Debug.WriteLine($"=== ProcessPropertyValueChange called (VehicleProperty) ===");
                System.Diagnostics.Debug.WriteLine($"Property: {property.DisplayName}");
                System.Diagnostics.Debug.WriteLine($"Path: {property.Path}");
                System.Diagnostics.Debug.WriteLine($"Filter: {property.Filter ?? "none"}");
                System.Diagnostics.Debug.WriteLine($"New Value: {newValue?.ToString() ?? "null"} (Type: {newValue?.GetType().Name ?? "null"})");
                System.Diagnostics.Debug.WriteLine($"Vehicle: {_vehicleName}");
            }

            var oldValue = GetPropertyValue(property);
            
            // Check if the value actually changed
            if (Equals(oldValue, newValue)) return;
            
            try
            {
                // Use cached CLS data if available
                if (!_isClsDataCached)
                {
                    if (EnableVerboseDebug)
                    {
                        System.Diagnostics.Debug.WriteLine($"=== About to Generate CLS in ProcessPropertyValueChange ===");
                    }
                    _cachedClsString = _clsParser.Generate(_vehicleData);
                    
                    // Check if generated string is valid before parsing
                    if (string.IsNullOrWhiteSpace(_cachedClsString))
                    {
                        System.Diagnostics.Debug.WriteLine($"Generate returned empty string for vehicle data with {_vehicleData.Count} entries");
                        return;
                    }
                    
                    if (EnableVerboseDebug)
                    {
                        System.Diagnostics.Debug.WriteLine($"=== About to Parse in ProcessPropertyValueChange ===");
                    }
                    _clsParser.Parse(_cachedClsString);
                    _isClsDataCached = true;
                    if (EnableVerboseDebug)
                    {
                        System.Diagnostics.Debug.WriteLine($"=== Successfully parsed in ProcessPropertyValueChange ===");
                    }
                }
                
                // Determine which paths to update
                var pathsToUpdate = new List<string>();
                
                // Handle array filtering
                if (property.UsesArrayFiltering())
                {
                    var resolvedPath = property.ResolveFilteredPath(_vehicleData);
                    if (resolvedPath != null)
                    {
                        pathsToUpdate.Add(resolvedPath);
                        
                        if (EnableVerboseDebug)
                        {
                            System.Diagnostics.Debug.WriteLine($"=== Resolved filtered path: {resolvedPath} ===");
                        }
                    }
                    else
                    {
                        if (EnableVerboseDebug)
                        {
                            System.Diagnostics.Debug.WriteLine($"=== Failed to resolve filtered path ===");
                        }
                        // Show error message for invalid input
                        MessageBox.Show($"Could not find array element matching filter '{property.Filter}' for property '{property.DisplayName}'.", 
                                      "Array Filter Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        return;
                    }
                }
                else
                {
                    // Use standard paths (main path + MultiPath)
                    pathsToUpdate.AddRange(property.GetAllPaths());
                }
                
                bool updateSuccessful = true;
                var failedPaths = new List<string>();
                
                if (EnableVerboseDebug)
                {
                    System.Diagnostics.Debug.WriteLine($"=== About to update {pathsToUpdate.Count} paths ===");
                }
                
                // Update all paths
                foreach (var pathToUpdate in pathsToUpdate)
                {
                    if (EnableVerboseDebug)
                    {
                        System.Diagnostics.Debug.WriteLine($"=== About to SetValue for path: {pathToUpdate} with value: {newValue} (Type: {newValue?.GetType().Name ?? "null"}) ===");
                    }
                    
                    if (newValue != null && !_clsParser.SetValue(pathToUpdate, newValue))
                    {
                        if (EnableVerboseDebug)
                        {
                            System.Diagnostics.Debug.WriteLine($"=== SetValue FAILED for path: {pathToUpdate} ===");
                        }
                        updateSuccessful = false;
                        failedPaths.Add(pathToUpdate);
                    }
                    else if (EnableVerboseDebug)
                    {
                        System.Diagnostics.Debug.WriteLine($"=== SetValue SUCCESS for path: {pathToUpdate} ===");
                    }
                }
                
                if (updateSuccessful)
                {
                    if (EnableVerboseDebug)
                    {
                        System.Diagnostics.Debug.WriteLine($"=== About to GetParsedData ===");
                    }
                    // Get the updated data back
                    _vehicleData = _clsParser.GetParsedData();
                    if (EnableVerboseDebug)
                    {
                        System.Diagnostics.Debug.WriteLine($"=== Successfully got parsed data ===");
                    }
                    
                    // Clear cache since data has changed
                    _cachedClsString = null;
                    _isClsDataCached = false;
                    
                    // Fire the PropertyChanged event with the updated vehicle data
                    PropertyChanged?.Invoke(this, new PropertyChangedEventArgs
                    {
                        PropertyPath = property.Path,
                        NewValue = newValue,
                        OldValue = oldValue,
                        UpdatedVehicleData = _vehicleData
                    });
                }
                else
                {
                    MessageBox.Show($"Failed to update some property paths for '{property.DisplayName}':\n{string.Join("\n", failedPaths)}\n\nThese paths may not exist in the vehicle data.", 
                                  "Property Update Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
            catch (Exception ex)
            {
                if (EnableVerboseDebug)
                {
                    System.Diagnostics.Debug.WriteLine($"=== EXCEPTION in ProcessPropertyValueChange (VehicleProperty) ===");
                    System.Diagnostics.Debug.WriteLine($"Property: {property.DisplayName}");
                    System.Diagnostics.Debug.WriteLine($"Path: {property.Path}");
                    System.Diagnostics.Debug.WriteLine($"Exception: {ex.GetType().Name}: {ex.Message}");
                    System.Diagnostics.Debug.WriteLine($"Stack Trace: {ex.StackTrace}");
                }
                
                MessageBox.Show($"Error updating property '{property.DisplayName}': {ex.Message}", GlobalConstants.Messages.PropertyUpdateError, 
                              MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }
        
        private int CreateTableLayout(List<VehicleProperty> properties, int yPosition)
        {
            if (properties.Count == 0) return 0;
            
            // Create table header with improved styling (using cached fonts)
            string tableGroupName = properties.First().TableGroup ?? "Properties";
            
            var headerLabel = new Label
            {
                Text = $"• {tableGroupName}",
                Font = _subHeaderFont, // Use cached font
                Location = new Point(GlobalConstants.TableLeftMargin, yPosition),
                AutoSize = true,
                ForeColor = GlobalConstants.Colors.TextPrimary,
                Anchor = AnchorStyles.Top | AnchorStyles.Left
            };
            _containerPanel.Controls.Add(headerLabel);
            yPosition += GlobalConstants.TableHeaderHeight;
            
            // Group properties by their base path (array index) and property type
            var groupedProperties = new Dictionary<string, List<VehicleProperty>>();
            var propertyTypes = new List<string>(); // To maintain order of property types
            
            foreach (var property in properties)
            {
                // Extract the property type from the path
                var propertyType = GetPropertyTypeFromPath(property.Path);
                
                if (!groupedProperties.ContainsKey(propertyType))
                {
                    groupedProperties[propertyType] = new List<VehicleProperty>();
                    propertyTypes.Add(propertyType);
                }
                
                groupedProperties[propertyType].Add(property);
            }
            
            // Sort properties within each group by their array index
            foreach (var group in groupedProperties.Values)
            {
                group.Sort((p1, p2) => GetArrayIndexFromPath(p1.Path).CompareTo(GetArrayIndexFromPath(p2.Path)));
            }
            
            // Calculate table dimensions
            int maxRowCount = groupedProperties.Values.Max(group => group.Count);
            int columnCount = propertyTypes.Count;
            
            // Calculate optimal column widths based on content and property values
            var columnWidths = new List<int>();
            
            // Critical Fix: Create graphics once and reuse for all calculations
            using (var g = _containerPanel.CreateGraphics())
            {
                for (int col = 0; col < propertyTypes.Count; col++)
                {
                    var propertyType = propertyTypes[col];
                    var propertiesInColumn = groupedProperties[propertyType];
                    
                    int maxTextWidth = GlobalConstants.MinColumnWidth;
                    
                    // Check the display name width
                    foreach (var property in propertiesInColumn)
                    {
                        var displayNameSize = g.MeasureString(property.DisplayName, _tableFontBold); // Use cached font
                        maxTextWidth = Math.Max(maxTextWidth, (int)displayNameSize.Width);
                        
                        // Also check the actual property value width
                        var currentValue = GetPropertyValue(property);
                        if (currentValue != null)
                        {
                            var valueSize = g.MeasureString(currentValue.ToString(), _defaultFont); // Use cached font
                            maxTextWidth = Math.Max(maxTextWidth, (int)valueSize.Width);
                        }
                    }
                    
                    // Add padding and minimum width constraint
                    columnWidths.Add(Math.Max(GlobalConstants.MinColumnWidth, maxTextWidth + GlobalConstants.CellPadding));
                }
            }
            
            // Calculate total table width
            int totalTableWidth = columnWidths.Sum() + (columnCount + 1) * 3; // +3 for borders
            
            // Create wrapper panel for table styling
            var tableWrapper = new Panel
            {
                Location = new Point(GlobalConstants.TableLeftMargin, yPosition),
                Size = new Size(totalTableWidth, GlobalConstants.MinRowHeight * maxRowCount + (maxRowCount + 1) * 3),
                BackColor = GlobalConstants.Colors.BackgroundMedium,
                Anchor = AnchorStyles.Top | AnchorStyles.Left,
                AutoSize = false
            };
            
            // Create the actual table panel with improved styling
            var tablePanel = new TableLayoutPanel
            {
                Location = new Point(2, 2),
                Size = new Size(totalTableWidth - 4, GlobalConstants.MinRowHeight * maxRowCount + (maxRowCount + 1) * 3 - 4),
                CellBorderStyle = TableLayoutPanelCellBorderStyle.Single,
                BackColor = Color.White,
                Anchor = AnchorStyles.Top | AnchorStyles.Left,
                AutoSize = false
            };
            
            // Enable double buffering for smoother rendering
            typeof(TableLayoutPanel).InvokeMember("DoubleBuffered",
                System.Reflection.BindingFlags.SetProperty | System.Reflection.BindingFlags.Instance | System.Reflection.BindingFlags.NonPublic,
                null, tablePanel, new object[] { true });
            
            // Set up table columns with calculated widths
            tablePanel.ColumnCount = columnCount;
            for (int i = 0; i < columnCount; i++)
            {
                tablePanel.ColumnStyles.Add(new ColumnStyle(SizeType.Absolute, columnWidths[i]));
            }
            
            // Set up table rows with AutoSize to accommodate content
            tablePanel.RowCount = maxRowCount;
            for (int i = 0; i < maxRowCount; i++)
            {
                tablePanel.RowStyles.Add(new RowStyle(SizeType.AutoSize));
            }
            
            // Add properties to table - each array object gets its own row, each property type gets its own column
            for (int col = 0; col < propertyTypes.Count; col++)
            {
                var propertyType = propertyTypes[col];
                var propertiesInColumn = groupedProperties[propertyType];
                
                for (int row = 0; row < propertiesInColumn.Count; row++)
                {
                    var property = propertiesInColumn[row];
                    var cellPanel = CreatePrettifiedTableCellPanel(property, row, col);
                    tablePanel.Controls.Add(cellPanel, col, row);
                }
            }
            
            // Calculate the actual height after adding all controls
            tablePanel.PerformLayout();
            int actualHeight = Math.Max(GlobalConstants.MinRowHeight * maxRowCount, tablePanel.PreferredSize.Height);
            
            // Update the wrapper panel height to match the content
            tableWrapper.Height = actualHeight + 4;
            tablePanel.Height = actualHeight;
            
            tableWrapper.Controls.Add(tablePanel);
            _containerPanel.Controls.Add(tableWrapper);
            
            return GlobalConstants.TableHeaderHeight + tableWrapper.Height + GlobalConstants.TableSpacing;
        }
        
        private Panel CreatePrettifiedTableCellPanel(VehicleProperty property, int row, int col)
        {
            // Get the current value for this property
            var currentValue = GetPropertyValue(property);
            
            // Create wrapper panel that will expand to fit content
            var wrapperPanel = new Panel
            {
                Dock = DockStyle.Fill,
                BackColor = GlobalConstants.Colors.BackgroundMedium,
                Padding = new Padding(2),
                AutoSize = false,
                Margin = new Padding(0)
            };
            
            // Create inner content panel with proper layout
            var contentPanel = new Panel
            {
                Dock = DockStyle.Fill,
                BackColor = Color.White,
                Padding = new Padding(8),
                AutoSize = false,
                Margin = new Padding(0)
            };
            
            // Create property name label (header)
            var nameLabel = new Label
            {
                Text = property.DisplayName,
                Font = _tableFontBold, // Use cached font
                TextAlign = ContentAlignment.TopCenter,
                ForeColor = GlobalConstants.Colors.TextSecondary,
                BackColor = Color.Transparent,
                AutoSize = true,
                Dock = DockStyle.Top,
                Padding = new Padding(0, 0, 0, 4)
            };
            
            // Create value label with proper sizing
            var valueLabel = new Label
            {
                Text = currentValue?.ToString() ?? string.Empty,
                Font = _defaultFont, // Use cached font
                TextAlign = ContentAlignment.MiddleCenter,
                ForeColor = GlobalConstants.Colors.TextPrimary,
                BackColor = Color.Transparent,
                AutoSize = true,
                Dock = DockStyle.Fill,
                Padding = new Padding(4),
                MaximumSize = new Size(0, 0)
            };
            
            // Add hover effect
            contentPanel.MouseEnter += (s, e) => {
                contentPanel.BackColor = GlobalConstants.Colors.HoverTable;
                valueLabel.BackColor = GlobalConstants.Colors.HoverTable;
            };
            contentPanel.MouseLeave += (s, e) => {
                contentPanel.BackColor = Color.White;
                valueLabel.BackColor = Color.Transparent;
            };
            
            // Add description tooltip if available
            if (!string.IsNullOrEmpty(property.Description))
            {
                var toolTip = new ToolTip
                {
                    BackColor = GlobalConstants.Colors.TooltipBackground,
                    ForeColor = GlobalConstants.Colors.TooltipText,
                    OwnerDraw = true,
                    AutoPopDelay = 5000,
                    InitialDelay = 500,
                    ReshowDelay = 100
                };
                
                // Custom tooltip drawing for better styling
                toolTip.Draw += (s, e) => {
                    e.Graphics.FillRectangle(new SolidBrush(GlobalConstants.Colors.TooltipBackground), e.Bounds);
                    e.Graphics.DrawRectangle(new Pen(GlobalConstants.Colors.TextMuted), 
                        new Rectangle(e.Bounds.X, e.Bounds.Y, e.Bounds.Width - 1, e.Bounds.Height - 1));
                    
                    var textBounds = new Rectangle(e.Bounds.X + 8, e.Bounds.Y + 6, e.Bounds.Width - 16, e.Bounds.Height - 12);
                    TextRenderer.DrawText(e.Graphics, e.ToolTipText, _defaultFont, textBounds, GlobalConstants.Colors.TooltipText, TextFormatFlags.Left | TextFormatFlags.WordBreak);
                };
                
                toolTip.Popup += (s, e) => {
                    var size = TextRenderer.MeasureText(property.Description, _defaultFont); // Use cached font
                    e.ToolTipSize = new Size(Math.Min(350, size.Width + 16), size.Height + 12);
                };
                
                toolTip.SetToolTip(contentPanel, property.Description);
                toolTip.SetToolTip(nameLabel, property.Description);
                toolTip.SetToolTip(valueLabel, property.Description);
            }
            
            // Add controls to content panel
            contentPanel.Controls.Add(valueLabel);
            contentPanel.Controls.Add(nameLabel);
            
            // Add content panel to wrapper
            wrapperPanel.Controls.Add(contentPanel);
            
            // Store the control reference for updates
            _propertyControls[property.Path] = valueLabel;
            
            return wrapperPanel;
        }
        
        private string GetPropertyTypeFromPath(string path)
        {
            // Find the last dot after the array index
            var lastDotIndex = path.LastIndexOf('.');
            if (lastDotIndex >= 0)
            {
                return path.Substring(lastDotIndex + 1);
            }
            return path;
        }
        
        private int GetArrayIndexFromPath(string path)
        {
            var startIndex = path.LastIndexOf('[');
            var endIndex = path.LastIndexOf(']');
            
            if (startIndex >= 0 && endIndex > startIndex)
            {
                var indexStr = path.Substring(startIndex + 1, endIndex - startIndex - 1);
                if (int.TryParse(indexStr, out int index))
                {
                    return index;
                }
            }
            
            return 0;
        }
        
        private int CreatePropertyControl(VehicleProperty property, int yPosition)
        {
            // Create a container panel for better styling (using GlobalConstants)
            var containerPanel = new Panel
            {
                Location = new Point(10, yPosition),
                Size = new Size(Math.Max(600, Math.Min(_containerPanel.Width - 40, 800)), GlobalConstants.ControlHeight + 8),
                BackColor = Color.White,
                Anchor = AnchorStyles.Top | AnchorStyles.Left,
                Padding = new Padding(5),
                Margin = new Padding(0, 2, 0, 2)
            };

            // Add subtle border
            containerPanel.Paint += (s, e) => {
                var pen = new Pen(GlobalConstants.Colors.BorderLight, 1);
                e.Graphics.DrawRectangle(pen, 0, 0, containerPanel.Width - 1, containerPanel.Height - 1);
            };

            // Add hover effect
            containerPanel.MouseEnter += (s, e) => containerPanel.BackColor = GlobalConstants.Colors.Hover;
            containerPanel.MouseLeave += (s, e) => containerPanel.BackColor = Color.White;

            // Create label with improved styling (using cached fonts)
            var label = new Label
            {
                Text = property.DisplayName,
                Location = new Point(GlobalConstants.LeftMargin - 10, 6),
                Size = new Size(GlobalConstants.LabelWidth, 23),
                TextAlign = ContentAlignment.MiddleLeft,
                Font = _defaultFont, // Use cached font
                ForeColor = GlobalConstants.Colors.TextPrimary,
                BackColor = Color.Transparent,
                Anchor = AnchorStyles.Top | AnchorStyles.Left
            };
            containerPanel.Controls.Add(label);

            // Add description tooltip if available
            if (!string.IsNullOrEmpty(property.Description))
            {
                var toolTip = new ToolTip
                {
                    BackColor = GlobalConstants.Colors.TooltipBackground,
                    ForeColor = GlobalConstants.Colors.TooltipText,
                    OwnerDraw = true
                };
                
                // Custom tooltip drawing for better styling
                toolTip.Draw += (s, e) => {
                    e.Graphics.FillRectangle(new SolidBrush(GlobalConstants.Colors.TooltipBackground), e.Bounds);
                    e.Graphics.DrawRectangle(new Pen(GlobalConstants.Colors.TextMuted), new Rectangle(e.Bounds.X, e.Bounds.Y, e.Bounds.Width - 1, e.Bounds.Height - 1));
                    
                    var textBounds = new Rectangle(e.Bounds.X + 8, e.Bounds.Y + 6, e.Bounds.Width - 16, e.Bounds.Height - 12);
                    TextRenderer.DrawText(e.Graphics, e.ToolTipText, _defaultFont, textBounds, GlobalConstants.Colors.TooltipText, TextFormatFlags.Left | TextFormatFlags.WordBreak); // Use cached font
                };
                
                toolTip.Popup += (s, e) => {
                    var size = TextRenderer.MeasureText(property.Description ?? "", _defaultFont); // Use cached font
                    e.ToolTipSize = new Size(Math.Min(350, size.Width + 16), size.Height + 12);
                };
                
                toolTip.SetToolTip(label, property.Description);
            }

            Control propertyControl;

            // Get current value from vehicle data using the property-aware method
            var currentValue = GetPropertyValue(property);
            
            // Determine the property type dynamically from the actual value
            var propertyType = property.GetPropertyType(currentValue);

            switch (propertyType)
            {
                case PropertyType.String:
                    if (property.Options != null && property.Options.Length > 0)
                    {
                        // Create dropdown for string with options using the new styled method (using GlobalConstants)
                        var comboBox = CreateStyledComboBox(
                            new Point(GlobalConstants.LeftMargin + GlobalConstants.LabelWidth + GlobalConstants.ControlSpacing - 10, 3), 
                            GlobalConstants.ControlWidth, GlobalConstants.ControlHeight, property.Options);
                        
                        if (currentValue != null)
                        {
                            comboBox.SelectedItem = currentValue.ToString();
                        }
                        
                        // Add focus styling
                        comboBox.Enter += (s, e) => containerPanel.BackColor = GlobalConstants.Colors.Focus;
                        comboBox.Leave += (s, e) => containerPanel.BackColor = Color.White;
                        
                        // Use immediate update for dropdown changes
                        comboBox.SelectedIndexChanged += (s, e) => OnPropertyValueChanged(property, comboBox.SelectedItem, false);
                        propertyControl = comboBox;
                    }
                    else
                    {
                        // Create textbox for string (using cached fonts)
                        var textBox = new TextBox
                        {
                            Location = new Point(GlobalConstants.LeftMargin + GlobalConstants.LabelWidth + GlobalConstants.ControlSpacing - 10, 3),
                            Size = new Size(GlobalConstants.ControlWidth, GlobalConstants.ControlHeight),
                            Text = currentValue?.ToString() ?? string.Empty,
                            Font = _defaultFont, // Use cached font
                            BorderStyle = BorderStyle.FixedSingle,
                            BackColor = Color.White,
                            ForeColor = GlobalConstants.Colors.TextPrimary,
                            Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right
                        };
                        
                        // Add focus styling
                        textBox.Enter += (s, e) => {
                            containerPanel.BackColor = GlobalConstants.Colors.Focus;
                            textBox.BackColor = Color.FromArgb(255, 255, 255);
                        };
                        textBox.Leave += (s, e) => {
                            containerPanel.BackColor = Color.White;
                            textBox.BackColor = Color.White;
                        };
                        
                        // Use debounced update for text changes
                        textBox.TextChanged += (s, e) => OnPropertyValueChanged(property, textBox.Text, true);
                        propertyControl = textBox;
                    }
                    break;
                    
                case PropertyType.Integer:
                case PropertyType.Double:
                    // Use shared utility method for numeric TextBox (using GlobalConstants)
                    var numericTextBox = UIUtils.CreateNumericTextBox(
                        new Point(GlobalConstants.LeftMargin + GlobalConstants.LabelWidth + GlobalConstants.ControlSpacing - 10, 3),
                        new Size(GlobalConstants.ControlWidth, GlobalConstants.ControlHeight),
                        currentValue);
                    
                    // Add focus styling
                    numericTextBox.Enter += (s, e) => {
                        containerPanel.BackColor = GlobalConstants.Colors.Focus;
                        if (numericTextBox.BackColor == Color.White)
                        {
                            numericTextBox.BackColor = Color.FromArgb(255, 255, 255);
                        }
                    };
                    numericTextBox.Leave += (s, e) => {
                        containerPanel.BackColor = Color.White;
                        if (numericTextBox.BackColor != GlobalConstants.Colors.ErrorBackground) // Don't change if showing error
                        {
                            numericTextBox.BackColor = Color.White;
                        }
                    };
                    
                    // Add specific event handlers for this property
                    numericTextBox.TextChanged += (s, e) =>
                    {
                        var text = numericTextBox.Text;
                        
                        // Allow empty text
                        if (string.IsNullOrEmpty(text))
                        {
                            OnPropertyValueChanged(property, null, true);
                            return;
                        }

                        // Try to parse as number and validate
                        object? numericValue = UIUtils.TryParseNumericValue(text);
                        
                        if (numericValue != null)
                        {
                            // Valid numeric value
                            OnPropertyValueChanged(property, numericValue, true);
                        }
                    };

                    // Add Leave event for final validation
                    numericTextBox.Leave += (s, e) =>
                    {
                        var text = numericTextBox.Text;
                        
                        if (string.IsNullOrEmpty(text))
                        {
                            numericTextBox.BackColor = Color.White;
                            return;
                        }

                        object? numericValue = UIUtils.TryParseNumericValue(text);
                        
                        if (numericValue == null)
                        {
                            // Show error message for invalid input
                            MessageBox.Show($"Invalid numeric value: '{text}'\n\nPlease enter a valid number (integer or decimal).", 
                                          GlobalConstants.Messages.InvalidInput, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                            
                            // Reset to the current property value
                            var currentValue = GetPropertyValue(property);
                            numericTextBox.Text = currentValue?.ToString() ?? string.Empty;
                            numericTextBox.BackColor = Color.White;
                        }
                        else
                        {
                            numericTextBox.BackColor = Color.White;
                        }
                    };
                    
                    propertyControl = numericTextBox;
                    break;
                    
                case PropertyType.Boolean:
                    var checkBox = new CheckBox
                    {
                        Location = new Point(GlobalConstants.LeftMargin + GlobalConstants.LabelWidth + GlobalConstants.ControlSpacing - 10, 6),
                        Size = new Size(GlobalConstants.ControlWidth, GlobalConstants.ControlHeight - 6),
                        Text = string.Empty,
                        Font = _defaultFont, // Use cached font
                        FlatStyle = FlatStyle.Flat,
                        BackColor = Color.Transparent,
                        ForeColor = GlobalConstants.Colors.TextPrimary,
                        Anchor = AnchorStyles.Top | AnchorStyles.Left
                    };
                    
                    if (currentValue != null && bool.TryParse(currentValue.ToString(), out bool boolValue))
                    {
                        checkBox.Checked = boolValue;
                    }
                    
                    // Add focus styling
                    checkBox.Enter += (s, e) => containerPanel.BackColor = GlobalConstants.Colors.Focus;
                    checkBox.Leave += (s, e) => containerPanel.BackColor = Color.White;
                    
                    // Use immediate update for checkbox changes
                    checkBox.CheckedChanged += (s, e) => OnPropertyValueChanged(property, checkBox.Checked, false);
                    propertyControl = checkBox;
                    break;
                    
                default:
                    propertyControl = new Label
                    {
                        Text = $"Unsupported property type: {currentValue?.GetType().Name ?? "null"}",
                        Location = new Point(GlobalConstants.LeftMargin + GlobalConstants.LabelWidth + GlobalConstants.ControlSpacing - 10, 6),
                        Size = new Size(GlobalConstants.ControlWidth, GlobalConstants.ControlHeight - 6),
                        Font = new Font(GlobalConstants.Fonts.PrimaryFontFamily, GlobalConstants.Fonts.DefaultFontSize),
                        ForeColor = GlobalConstants.Colors.Error,
                        BackColor = Color.Transparent,
                        Anchor = AnchorStyles.Top | AnchorStyles.Left
                    };
                    break;
            }

            containerPanel.Controls.Add(propertyControl);
            _containerPanel.Controls.Add(containerPanel);
            
            // Store the control using the property path for lookups
            _propertyControls[property.Path] = propertyControl;

            return containerPanel.Height + 4; // Return the height used + spacing
        }
    }
}