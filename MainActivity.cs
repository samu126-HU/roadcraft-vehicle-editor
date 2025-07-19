using ClsParser.Library;
using System.Text;
using System.Diagnostics;

namespace RoadCraft_Vehicle_Editor_v2___new_edition
{
    public partial class MainActivity : Form
    {
        private FileLoadService _fileLoadService;
        private ClsFileParser _clsParser;
        private VehicleSaveService _vehicleSaveService;
        private Dictionary<string, object>? _currentVehicleData;
        private List<PropertyEditor> _propertyEditors = new List<PropertyEditor>();
        private ClsFileEditor? _clsFileEditor;

        // Track vehicle modifications with thread safety
        private readonly Dictionary<string, Dictionary<string, object>> _vehicleDataCache = new Dictionary<string, Dictionary<string, object>>();
        private readonly Dictionary<string, Dictionary<string, Dictionary<string, object>>> _vehicleClsFilesCache = new Dictionary<string, Dictionary<string, Dictionary<string, object>>>();
        private readonly HashSet<string> _modifiedVehicles = new HashSet<string>();
        private string _currentVehicleName = string.Empty;

        // UI update tracking
        private volatile bool _isUpdatingVehicleList = false;

        // Thread safety fixes - use locks and atomic operations
        private static readonly object _exceptionLock = new object();
        private static volatile int _exceptionCounter = 0;
        private readonly object _vehicleDataLock = new object();
        private readonly object _modifiedVehiclesLock = new object();
        private readonly object _currentVehicleDataLock = new object();

        // Debug mode control, verbose debugging optional
        private static volatile bool _enableVerboseDebug = false;
        public static bool EnableVerboseDebug 
        { 
            get => _enableVerboseDebug;
            set 
            {
                _enableVerboseDebug = value;
                // Also set it in other classes that use debug output
                PropertyEditor.EnableVerboseDebug = value;
                Properties.EnableVerboseDebug = value;
            }
        }

        public MainActivity()
        {
            InitializeComponent();

            // Set up global exception handling to catch ALL ArgumentExceptions
            SetupGlobalExceptionHandling();

            // Enable double buffering for the form and all child controls
            SetStyle(ControlStyles.DoubleBuffer | ControlStyles.AllPaintingInWmPaint |
                     ControlStyles.UserPaint | ControlStyles.ResizeRedraw, true);
            UpdateStyles();

            // Enable double buffering for ListBox and TabControl using reflection
            EnableDoubleBuffering(VehicleList);
            EnableDoubleBuffering(propertiesTab);

            // Set up custom drawing for VehicleList to handle category headers
            VehicleList.DrawMode = DrawMode.OwnerDrawFixed;
            VehicleList.DrawItem += VehicleList_DrawItem;

            // Additional optimization: reduce flicker for all controls
            this.SuspendLayout();

            _fileLoadService = new FileLoadService();
            _clsParser = new ClsFileParser();
            _vehicleSaveService = new VehicleSaveService();

            SaveBtn.Click += SaveBtn_Click;

            // Set up keyboard shortcuts for debug functions
            this.KeyPreview = true;
            this.KeyDown += MainActivity_KeyDown;

            this.ResumeLayout(false);

            _ = LoadCurrentSettingsAsync();
        }

        /// <summary>
        /// Properly dispose of all PropertyEditor instances and clear the list
        /// </summary>
        private void CleanupPropertyEditors()
        {
            foreach (var propertyEditor in _propertyEditors)
            {
                try
                {
                    propertyEditor?.Dispose();
                }
                catch (Exception ex)
                {
                    // Log but don't throw during cleanup
                    System.Diagnostics.Debug.WriteLine($"Error disposing PropertyEditor: {ex.Message}");
                }
            }
            _propertyEditors.Clear();
        }

        /// <summary>
        /// Custom drawing for VehicleList to handle category headers and styled vehicle items
        /// </summary>
        private void VehicleList_DrawItem(object sender, DrawItemEventArgs e)
        {
            if (e.Index < 0 || e.Index >= VehicleList.Items.Count)
                return;

            var listBox = (ListBox)sender;
            var item = listBox.Items[e.Index];
            
            // Draw the background
            e.DrawBackground();
            
            // Determine colors and fonts based on item type
            Color textColor;
            Font textFont; // Use cached fonts instead of creating new ones
            string displayText;
            
            if (item is FileLoadService.CategoryHeaderItem categoryHeader)
            {
                // Category header styling - use cached font
                textColor = GlobalConstants.Colors.TextSecondary;
                textFont = GlobalConstants.Fonts.SubHeaderFont; // FIXED: Use cached font
                displayText = categoryHeader.ToString();
                
                // Draw category header with background
                using (var brush = new SolidBrush(GlobalConstants.Colors.BackgroundDark))
                {
                    e.Graphics.FillRectangle(brush, e.Bounds);
                }
                
                // Draw subtle border
                using (var pen = new Pen(GlobalConstants.Colors.BorderDark, 1))
                {
                    e.Graphics.DrawLine(pen, e.Bounds.Left, e.Bounds.Bottom - 1, e.Bounds.Right, e.Bounds.Bottom - 1);
                }
            }
            else if (item is FileLoadService.VehicleListItem vehicleListItem)
            {
                // Vehicle item styling - use cached fonts
                textColor = vehicleListItem.IsModified ? GlobalConstants.Colors.Modified : GlobalConstants.Colors.TextPrimary;
                textFont = vehicleListItem.IsModified ? GlobalConstants.Fonts.DefaultBoldFont : GlobalConstants.Fonts.DefaultFont; // FIXED: Use cached fonts
                displayText = vehicleListItem.ToString();
                
                // Highlight modified vehicles
                if (vehicleListItem.IsModified)
                {
                    using (var brush = new SolidBrush(GlobalConstants.Colors.ModifiedBackground))
                    {
                        e.Graphics.FillRectangle(brush, e.Bounds);
                    }
                }
            }
            else
            {
                // Fallback for other item types - use cached font
                textColor = GlobalConstants.Colors.TextPrimary;
                textFont = GlobalConstants.Fonts.DefaultFont; // FIXED: Use cached font
                displayText = item.ToString() ?? string.Empty;
            }
            
            // Draw the text
            var textBounds = new Rectangle(e.Bounds.X + 8, e.Bounds.Y + 2, e.Bounds.Width - 16, e.Bounds.Height - 4);
            using (var brush = new SolidBrush(textColor))
            {
                e.Graphics.DrawString(displayText, textFont, brush, textBounds, StringFormat.GenericDefault);
            }
            
            // Draw focus rectangle if needed
            e.DrawFocusRectangle();
        }

        private void SetupGlobalExceptionHandling()
        {
            // Set up first-chance exception handling to catch ALL exceptions before they're handled
            AppDomain.CurrentDomain.FirstChanceException += (sender, e) =>
            {
                lock (_exceptionLock)
                {
                    // Thread-safe increment (Critical Fix #2)
                    var currentCount = Interlocked.Increment(ref _exceptionCounter);

                    // Always log basic information for ALL exceptions
                    var basicInfo = $"{e.Exception.GetType().Name} #{currentCount}: {e.Exception.Message}";
                    System.Diagnostics.Debug.WriteLine(basicInfo);
                    Console.WriteLine(basicInfo);

                    // Show detailed information if verbose debug is enabled OR if it's a critical exception
                    bool isArgumentException = e.Exception is ArgumentException;
                    bool isCriticalException = e.Exception is NullReferenceException ||
                                             e.Exception is InvalidOperationException ||
                                             e.Exception is FileNotFoundException ||
                                             e.Exception is DirectoryNotFoundException ||
                                             e.Exception is UnauthorizedAccessException ||
                                             e.Exception is OutOfMemoryException;

                    if (EnableVerboseDebug || isCriticalException)
                    {
                        var errorDetails = new StringBuilder();
                        errorDetails.AppendLine($"=== FIRST-CHANCE {e.Exception.GetType().Name} #{currentCount} ===");
                        errorDetails.AppendLine($"Time: {DateTime.Now:yyyy-MM-dd HH:mm:ss.fff}");
                        errorDetails.AppendLine($"Thread: {Environment.CurrentManagedThreadId}");
                        errorDetails.AppendLine($"Exception Type: {e.Exception.GetType().FullName}");
                        errorDetails.AppendLine($"Message: {e.Exception.Message}");

                        // Add ArgumentException-specific details
                        if (isArgumentException && e.Exception is ArgumentException argEx)
                        {
                            errorDetails.AppendLine($"Parameter Name: {argEx.ParamName ?? "null"}");
                        }

                        errorDetails.AppendLine($"Source: {e.Exception.Source ?? "null"}");
                        errorDetails.AppendLine($"Target Site: {e.Exception.TargetSite?.Name ?? "null"}");

                        if (e.Exception.InnerException != null)
                        {
                            errorDetails.AppendLine($"Inner Exception: {e.Exception.InnerException.GetType().Name}: {e.Exception.InnerException.Message}");
                        }

                        errorDetails.AppendLine("Stack Trace:");
                        errorDetails.AppendLine(e.Exception.StackTrace);

                        // Try to get more context about what's happening
                        var stackTrace = new StackTrace(true);
                        errorDetails.AppendLine("\n=== DETAILED CALL STACK ===");
                        for (int i = 0; i < stackTrace.FrameCount; i++)
                        {
                            var frame = stackTrace.GetFrame(i);
                            if (frame != null)
                            {
                                var method = frame.GetMethod();
                                var fileName = frame.GetFileName();
                                var lineNumber = frame.GetFileLineNumber();

                                errorDetails.AppendLine($"  {i}: {method?.DeclaringType?.Name}.{method?.Name}");
                                if (!string.IsNullOrEmpty(fileName))
                                {
                                    errorDetails.AppendLine($"      File: {fileName}:{lineNumber}");
                                }
                            }
                        }

                        errorDetails.AppendLine("=== END EXCEPTION DETAILS ===\n");

                        // Output to multiple channels
                        System.Diagnostics.Debug.WriteLine(errorDetails.ToString());
                        Console.WriteLine(errorDetails.ToString());

                        // Thread-safe file writing
                        try
                        {
                            var logPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, GlobalConstants.ExceptionLogFileName);
                            lock (_exceptionLock) // Ensure thread-safe file access
                            {
                                File.AppendAllText(logPath, errorDetails.ToString());
                            }
                        }
                        catch
                        {
                            // Ignore file write errors
                        }
                    }
                }
            };
        }

        private void EnableDoubleBuffering(Control control)
        {
            // Use reflection to enable double buffering for controls that don't expose it
            var property = typeof(Control).GetProperty("DoubleBuffered",
                System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Instance);
            property?.SetValue(control, true);
        }

        private async Task LoadCurrentSettingsAsync()
        {
            // Use utility for validation (redundant validation fix)
            if (!VehicleUtils.ValidateRoadCraftEnvironment(out string _))
            {
                StatusLabel.Text = "Status: No RoadCraft folder set. Please configure in settings.";
                VehicleList.Items.Clear();
                VehicleList.Items.Add("No RoadCraft folder configured");
                VehicleList.Enabled = false;
                SaveBtn.Enabled = false;
            }
            else
            {
                StatusLabel.Text = GlobalConstants.Messages.LoadingVehicles;
                await LoadVehicleListAsync();
                SaveBtn.Enabled = true;
            }

            if (GlobalConfig.AppSettings.FirstRun)
            {
                GlobalConfig.AppSettings.FirstRun = false;
                GlobalConfig.SaveAppSettings();
                StatusLabel.Text = "Not yet configured. Please set your RoadCraft folder in settings.";
                MessageBox.Show(
                    $"Welcome to {GlobalConstants.AppName}!\n\n" +
                    "Please configure your RoadCraft folder in the settings to get started.",
                    "Welcome", MessageBoxButtons.OK, MessageBoxIcon.Information);
                button1_Click(this, EventArgs.Empty);
            }
        }

        private async Task LoadVehicleListAsync()
        {
            try
            {
                StatusLabel.Text = "Status: Loading vehicles...";

                VehicleList.BeginUpdate();

                try
                {
                    // Use the new categorized vehicle loading method
                    await _fileLoadService.PopulateVehicleListAsync(VehicleList, showCategories: true);
                }
                finally
                {
                    VehicleList.EndUpdate();
                }

                // Count actual vehicles (excluding category headers)
                int vehicleCount = 0;
                foreach (var item in VehicleList.Items)
                {
                    if (item is FileLoadService.VehicleListItem || item is FileLoadService.VehicleInfo)
                    {
                        vehicleCount++;
                    }
                }

                if (vehicleCount > 0)
                {
                    StatusLabel.Text = $"Status: Loaded {vehicleCount} vehicles in {_fileLoadService.GetVehiclesByCategory().Count} categories";
                }
                else if (VehicleList.Items.Count > 0)
                {
                    var firstItem = VehicleList.Items[0].ToString();
                    if (firstItem != null && !firstItem.StartsWith("Error") && !firstItem.StartsWith("No vehicles"))
                    {
                        StatusLabel.Text = $"Status: Loaded {vehicleCount} vehicles";
                    }
                    else
                    {
                        StatusLabel.Text = "Status: No vehicles found or error occurred";
                    }
                }
                else
                {
                    StatusLabel.Text = "Status: No vehicles found";
                }
            }
            catch (Exception ex)
            {
                StatusLabel.Text = $"Status: Error loading vehicles";
                ErrorHelper.ShowLoadError("vehicles", ex.Message);
            }
        }

        /// <summary>
        /// Updates a ListBox item without causing flicker or selection changes
        /// </summary>
        private void UpdateListBoxItem(ListBox listBox, int index, object newItem)
        {
            if (index < 0 || index >= listBox.Items.Count) return;

            var currentItem = listBox.Items[index];
            if (ReferenceEquals(currentItem, newItem)) return;

            // Store current state
            int selectedIndex = listBox.SelectedIndex;
            bool wasSelected = (selectedIndex == index);

            // Temporarily disable events and updates
            listBox.SelectedIndexChanged -= VehicleList_SelectedIndexChanged;
            listBox.BeginUpdate();

            try
            {
                listBox.Items[index] = newItem;

                if (wasSelected)
                {
                    listBox.SelectedIndex = index;
                }
            }
            finally
            {
                listBox.EndUpdate();
                listBox.SelectedIndexChanged += VehicleList_SelectedIndexChanged;
            }
        }

        private void UpdateVehicleModificationStatus(string vehicleName, bool isModified)
        {
            if (_isUpdatingVehicleList) return;

            _isUpdatingVehicleList = true;

            try
            {
                // Try to use the new FileLoadService method first
                try
                {
                    _fileLoadService.UpdateVehicleModificationStatus(VehicleList, vehicleName, isModified);
                }
                catch
                {
                    // Fallback to the old method for backward compatibility
                    // Find the item in the list box
                    for (int i = 0; i < VehicleList.Items.Count; i++)
                    {
                        var item = VehicleList.Items[i];
                        string itemVehicleName = string.Empty;

                        // Extract vehicle name from different item types
                        if (item is FileLoadService.VehicleListItem vehicleListItem)
                        {
                            itemVehicleName = vehicleListItem.VehicleInfo.Name;
                        }
                        else if (item is FileLoadService.VehicleInfo vehicleInfo)
                        {
                            itemVehicleName = vehicleInfo.Name;
                        }
                        else if (item is ModifiedVehicleInfo modifiedInfo)
                        {
                            itemVehicleName = modifiedInfo.OriginalInfo.Name;
                        }
                        else if (item is string str)
                        {
                            itemVehicleName = str.TrimStart(' ').TrimEnd(' ', '*');
                        }

                        // Check if this is the vehicle we need to update
                        if (itemVehicleName == vehicleName)
                        {
                            object? newItem = null;

                            if (isModified)
                            {
                                // Need to mark as modified
                                if (item is FileLoadService.VehicleListItem listItem)
                                {
                                    listItem.IsModified = true;
                                    newItem = listItem;
                                }
                                else if (item is FileLoadService.VehicleInfo info)
                                {
                                    newItem = new ModifiedVehicleInfo(info, true);
                                }
                                else if (item is string strItem && !strItem.EndsWith(" *"))
                                {
                                    newItem = strItem + " *";
                                }
                            }
                            else
                            {
                                // Need to unmark as modified
                                if (item is FileLoadService.VehicleListItem listItem)
                                {
                                    listItem.IsModified = false;
                                    newItem = listItem;
                                }
                                else if (item is ModifiedVehicleInfo modInfo)
                                {
                                    newItem = modInfo.OriginalInfo;
                                }
                                else if (item is string strItem && strItem.EndsWith(" *"))
                                {
                                    newItem = strItem.TrimEnd(' ', '*');
                                }
                            }

                            // Flicker-free update method
                            if (newItem != null)
                            {
                                UpdateListBoxItem(VehicleList, i, newItem);
                            }

                            break;
                        }
                    }
                }

                // Thread-safe update of status label
                int modifiedCount;
                lock (_modifiedVehiclesLock)
                {
                    modifiedCount = _modifiedVehicles.Count;
                }

                if (modifiedCount > 0)
                {
                    StatusLabel.Text = $"Status: {modifiedCount} vehicle(s) modified";
                }
                else
                {
                    StatusLabel.Text = $"Status: Loaded {VehicleList.Items.Count} vehicles";
                }
            }
            finally
            {
                _isUpdatingVehicleList = false;
            }
        }

        // Settings button
        private async void button1_Click(object sender, EventArgs e)
        {
            var settings = new SettingsActivity();
            if (settings.ShowDialog() == DialogResult.OK)
            {
                await LoadCurrentSettingsAsync();
            }
        }

        private void ShowDebugHelp()
        {
            var helpText = $@"{GlobalConstants.AppName} - Debug Features

Keyboard Shortcuts:
• Ctrl+Shift+B - Show properties with square brackets in current vehicle
• Ctrl+Shift+T - Test a specific property path
• Ctrl+Shift+D - Show all discovered property paths
• Ctrl+Shift+C - Show CLS files in current vehicle folder
• Ctrl+Shift+H - Show this help message
• Ctrl+Shift+V - Toggle verbose debug mode (detailed output to debug window in VS)

Property Path Format:
• Normal properties: properties.prop_truck_view.truckName
• Properties with brackets: properties.prop_blueprints.blueprints.Engine.groups.""[SOUND] acceleration input"".comment
• Array elements: properties.items[0].value / properties.items[*].value (gets all values inside an array of objects)

Debug Mode (to be used in VS):
• Verbose debug mode: {(EnableVerboseDebug ? "ENABLED" : "DISABLED")}
• When enabled, shows detailed debug information in the Output window
• When disabled, shows only basic error messages

CLS Files Debug:
• Use Ctrl+Shift+C to examine all files in the current vehicle's folder
• This helps identify if additional CLS files exist and are being found correctly
• The output shows which files are CLS files and which is the main file

Tips:
• Properties with square brackets, spaces, or special characters must be quoted
• Use the discovery tools to find available property paths
• The ClsParser.Library supports quoted property names for special characters
• Test paths before adding them to {GlobalConstants.VehiclePropertiesFileName}

Note: Load a vehicle first before using the debug features.";

            MessageBox.Show(helpText, "Debug Help", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void ToggleVerboseDebugMode()
        {
            EnableVerboseDebug = !EnableVerboseDebug;
            
            var status = EnableVerboseDebug ? "ENABLED" : "DISABLED";
            var message = $"Verbose debug mode is now {status}.\n\n" +
                         $"When enabled, detailed debug information is written to the Output window.\n" +
                         $"When disabled, only basic error messages are shown.\n\n" +
                         $"You can toggle this setting anytime with Ctrl+Shift+V.";
            
            MessageBox.Show(message, "Debug Mode Toggle", MessageBoxButtons.OK, MessageBoxIcon.Information);
            
            // Update status label to reflect the change
            if (EnableVerboseDebug)
            {
                StatusLabel.Text = $"Status: Verbose debug mode enabled";
            }
            else
            {
                StatusLabel.Text = $"Status: Verbose debug mode disabled";
            }
        }

        private async void VehicleList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (VehicleList.SelectedItem != null)
            {
                string vehicleName = string.Empty;

                // Handle different types of selected items
                if (VehicleList.SelectedItem is FileLoadService.VehicleListItem vehicleListItem)
                {
                    vehicleName = vehicleListItem.VehicleInfo.Name;
                }
                else if (VehicleList.SelectedItem is FileLoadService.VehicleInfo vehicleInfo)
                {
                    vehicleName = vehicleInfo.Name;
                }
                else if (VehicleList.SelectedItem is FileLoadService.CategoryHeaderItem)
                {
                    // Category header selected - do nothing
                    return;
                }
                else if (VehicleList.SelectedItem is ModifiedVehicleInfo modifiedInfo)
                {
                    vehicleName = modifiedInfo.OriginalInfo.Name;
                }
                else
                {
                    var itemText = VehicleList.SelectedItem.ToString();
                    if (!string.IsNullOrEmpty(itemText))
                    {
                        // Handle legacy string-based items and prettified names
                        vehicleName = itemText.TrimStart(' ').TrimEnd(' ', '*');
                        
                        // Try to find the vehicle by pretty name
                        var vehicleByPrettyName = _fileLoadService.GetAllVehicles()
                            .FirstOrDefault(v => v.PrettyName == vehicleName);
                        
                        if (vehicleByPrettyName != null)
                        {
                            vehicleName = vehicleByPrettyName.Name;
                        }
                    }
                }

                if (!string.IsNullOrEmpty(vehicleName) &&
                    !vehicleName.StartsWith("Error") &&
                    !vehicleName.StartsWith("No vehicles") &&
                    !vehicleName.StartsWith("Loading") &&
                    !vehicleName.StartsWith("??")) // Skip category headers
                {
                    // Thread-safe save current vehicle data before switching
                    lock (_currentVehicleDataLock)
                    {
                        if (!string.IsNullOrEmpty(_currentVehicleName) && _currentVehicleData != null)
                        {
                            lock (_vehicleDataLock)
                            {
                                _vehicleDataCache[_currentVehicleName] = new Dictionary<string, object>(_currentVehicleData);
                            }
                        }
                        _currentVehicleName = vehicleName;
                    }

                    // Clear path existence cache when switching vehicles for fresh data
                    Properties.ClearPathExistenceCache();

                    // Thread-safe check for cached data
                    Dictionary<string, object>? cachedData = null;
                    lock (_vehicleDataLock)
                    {
                        if (_vehicleDataCache.ContainsKey(vehicleName))
                        {
                            cachedData = _vehicleDataCache[vehicleName];
                        }
                    }

                    if (cachedData != null)
                    {
                        lock (_currentVehicleDataLock)
                        {
                            _currentVehicleData = cachedData;
                        }
                        StatusLabel.Text = $"Status: Loaded cached data - {vehicleName}";

                        // Create property editor immediately since we have cached data
                        CreateVehiclePropertyEditor(vehicleName);
                    }
                    else
                    {
                        StatusLabel.Text = $"Status: Loading {vehicleName}...";

                        // Clear properties tab immediately to show we're loading
                        propertiesTab.SuspendLayout();
                        try
                        {
                            propertiesTab.TabPages.Clear();
                            _propertyEditors.Clear();

                            // Add a loading tab
                            var loadingTab = new TabPage("Loading...");
                            var loadingLabel = new Label
                            {
                                Text = $"Loading vehicle data for {vehicleName}...",
                                Dock = DockStyle.Fill,
                                TextAlign = ContentAlignment.MiddleCenter,
                                Font = GlobalConstants.Fonts.SubHeaderItalicFont, // FIXED: Use cached font
                                ForeColor = Color.Gray
                            };
                            loadingTab.Controls.Add(loadingLabel);
                            propertiesTab.TabPages.Add(loadingTab);
                        }
                        finally
                        {
                            propertiesTab.ResumeLayout();
                        }

                        // Load vehicle data asynchronously
                        await LoadVehicleDataAsync(vehicleName);

                        // Thread-safe cache the loaded data
                        lock (_currentVehicleDataLock)
                        {
                            if (_currentVehicleData != null)
                            {
                                lock (_vehicleDataLock)
                                {
                                    _vehicleDataCache[vehicleName] = new Dictionary<string, object>(_currentVehicleData);
                                }
                            }
                        }

                        // Create property editor after loading is complete
                        CreateVehiclePropertyEditor(vehicleName);
                    }
                }
            }
        }

        private void CreateVehiclePropertyEditor(string vehicleName)
        {
            // Suspend layout updates to prevent flicker during tab creation
            propertiesTab.SuspendLayout();

            try
            {
                // Critical Fix: Properly clean up existing PropertyEditors to prevent memory leaks
                CleanupPropertyEditors();
                
                // Clear all existing tabs
                propertiesTab.TabPages.Clear();
                _clsFileEditor?.Dispose();
                _clsFileEditor = null;

                Dictionary<string, object>? currentVehicleData;
                lock (_currentVehicleDataLock)
                {
                    currentVehicleData = _currentVehicleData;
                }

                if (currentVehicleData != null)
                {
                    // Get categorized properties for this vehicle - only include existing paths
                    var categorizedProperties = Properties.GetCategorizedProperties(vehicleName, currentVehicleData);

                    // Create tabs in batch for better performance
                    var tabPages = new List<TabPage>();
                    var propertyEditors = new List<PropertyEditor>();

                    // Create all tabs and property editors first
                    foreach (var category in categorizedProperties)
                    {
                        var tabPage = new TabPage(category.Key);

                        // Create PropertyEditor for this category
                        var propertyEditor = new PropertyEditor
                        {
                            Dock = DockStyle.Fill
                        };

                        // Handle property changes
                        propertyEditor.PropertyChanged += OnVehiclePropertyChanged;

                        // Load the properties into the editor (filtered by category)
                        propertyEditor.LoadPropertiesForCategory(vehicleName, currentVehicleData, category.Key);

                        tabPage.Controls.Add(propertyEditor);
                        tabPages.Add(tabPage);
                        propertyEditors.Add(propertyEditor);
                    }

                    // Add the new "All CLS Files" tab
                    var clsFilesTab = new TabPage("All CLS Files");
                    _clsFileEditor = new ClsFileEditor
                    {
                        Dock = DockStyle.Fill
                    };

                    // Handle CLS file property changes
                    _clsFileEditor.ClsPropertyChanged += OnClsFilePropertyChanged;

                    clsFilesTab.Controls.Add(_clsFileEditor);
                    tabPages.Add(clsFilesTab);

                    // Load CLS files asynchronously
                    _ = LoadClsFilesForVehicleAsync(vehicleName);

                    // Add all tabs at once for better performance
                    if (tabPages.Count > 0)
                    {
                        propertiesTab.TabPages.AddRange(tabPages.ToArray());
                        _propertyEditors.AddRange(propertyEditors);

                        // Select the first tab
                        propertiesTab.SelectedIndex = 0;
                    }
                    else
                    {
                        // If no properties found, show a message
                        var tabPage = new TabPage("No Properties");
                        var errorLabel = new Label
                        {
                            Text = $"No valid properties found for vehicle '{vehicleName}'. Check that the property paths in vehicle_properties.json exist in the CLS file.",
                            Dock = DockStyle.Fill,
                            TextAlign = ContentAlignment.MiddleCenter,
                            AutoSize = false,
                            Font = GlobalConstants.Fonts.DefaultFont, // FIXED: Use cached font
                            ForeColor = Color.DarkRed
                        };
                        tabPage.Controls.Add(errorLabel);
                        propertiesTab.TabPages.Add(tabPage);
                    }
                }
                else
                {
                    // Show error message if no data was loaded
                    var tabPage = new TabPage("Error");
                    var errorLabel = new Label
                    {
                        Text = "Failed to load vehicle data",
                        Dock = DockStyle.Fill,
                        TextAlign = ContentAlignment.MiddleCenter,
                        Font = GlobalConstants.Fonts.DefaultFont, // FIXED: Use cached font
                        ForeColor = Color.DarkRed
                    };
                    tabPage.Controls.Add(errorLabel);
                    propertiesTab.TabPages.Add(tabPage);
                }
            }
            finally
            {
                propertiesTab.ResumeLayout();
            }
        }

        private void OnVehiclePropertyChanged(object sender, PropertyChangedEventArgs e)
        {
            StatusLabel.Text = $"Status: Property '{e.PropertyPath}' changed to '{e.NewValue}'";

            // Thread-safe update the current vehicle data with the updated data from the property editor
            if (e.UpdatedVehicleData != null)
            {
                lock (_currentVehicleDataLock)
                {
                    _currentVehicleData = e.UpdatedVehicleData;
                }
            }

            // Thread-safe mark the current vehicle as modified
            string currentVehicleName;
            lock (_currentVehicleDataLock)
            {
                currentVehicleName = _currentVehicleName;
            }

            if (!string.IsNullOrEmpty(currentVehicleName))
            {
                bool wasModified;
                lock (_modifiedVehiclesLock)
                {
                    wasModified = _modifiedVehicles.Contains(currentVehicleName);
                    _modifiedVehicles.Add(currentVehicleName);
                }

                // Thread-safe update the vehicle data cache
                Dictionary<string, object>? currentVehicleData;
                lock (_currentVehicleDataLock)
                {
                    currentVehicleData = _currentVehicleData;
                }

                if (currentVehicleData != null)
                {
                    lock (_vehicleDataLock)
                    {
                        _vehicleDataCache[currentVehicleName] = new Dictionary<string, object>(currentVehicleData);
                    }
                }

                // Clear path existence cache when data changes to ensure fresh lookups
                Properties.ClearPathExistenceCache();

                // Only update other property editors if there are MultiPath properties
                // and only if the sender is not already handling the synchronization
                var allProperties = Properties.GetPropertiesForVehicle(currentVehicleName, currentVehicleData);
                var property = allProperties.FirstOrDefault(p => p.Path == e.PropertyPath);

                if (property != null && property.MultiPath != null && property.MultiPath.Length > 0)
                {
                    // Suspend layout updates for properties tab to prevent flicker
                    propertiesTab.SuspendLayout();

                    try
                    {
                        // Update other property editors with the new data (but not the sender)
                        foreach (var propertyEditor in _propertyEditors)
                        {
                            if (propertyEditor != sender && currentVehicleData != null)
                            {
                                propertyEditor.UpdateVehicleData(currentVehicleData);
                            }
                        }
                    }
                    finally
                    {
                        propertiesTab.ResumeLayout();
                    }
                }

                // Only update the UI if the modification status actually changed
                if (!wasModified)
                {
                    UpdateVehicleModificationStatus(currentVehicleName, true);
                }
            }
        }

        private void OnClsFilePropertyChanged(object? sender, ClsPropertyChangedEventArgs e)
        {
            StatusLabel.Text = $"Status: CLS file '{e.ClsFileName}' property '{e.PropertyPath}' changed to '{e.NewValue}'";

            // Thread-safe mark the current vehicle as modified
            string currentVehicleName;
            lock (_currentVehicleDataLock)
            {
                currentVehicleName = _currentVehicleName;
            }

            if (!string.IsNullOrEmpty(currentVehicleName))
            {
                bool wasModified;
                lock (_modifiedVehiclesLock)
                {
                    wasModified = _modifiedVehicles.Contains(currentVehicleName);
                    _modifiedVehicles.Add(currentVehicleName);
                }

                // Update the CLS files cache
                if (_clsFileEditor != null)
                {
                    lock (_vehicleDataLock)
                    {
                        _vehicleClsFilesCache[currentVehicleName] = _clsFileEditor.GetAllClsData();
                    }
                }

                // Only update the UI if the modification status actually changed
                if (!wasModified)
                {
                    UpdateVehicleModificationStatus(currentVehicleName, true);
                }
            }
        }

        private async void SaveBtn_Click(object sender, EventArgs e)
        {
            int modifiedCount;
            lock (_modifiedVehiclesLock)
            {
                modifiedCount = _modifiedVehicles.Count;
            }

            if (modifiedCount == 0)
            {
                MessageBox.Show("No vehicles have been modified.", "Save Info",
                              MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            // Show save options dialog
            using var saveOptionsDialog = new SaveOptionsDialog();
            if (saveOptionsDialog.ShowDialog() == DialogResult.OK)
            {
                var saveOption = saveOptionsDialog.SelectedOption;

                // Thread-safe save current vehicle data to cache before saving all
                string currentVehicleName;
                Dictionary<string, object>? currentVehicleData;
                lock (_currentVehicleDataLock)
                {
                    currentVehicleName = _currentVehicleName;
                    currentVehicleData = _currentVehicleData;
                }

                if (!string.IsNullOrEmpty(currentVehicleName) && currentVehicleData != null)
                {
                    lock (_vehicleDataLock)
                    {
                        _vehicleDataCache[currentVehicleName] = new Dictionary<string, object>(currentVehicleData);
                    }
                }

                // Save current CLS files data to cache before saving all
                if (!string.IsNullOrEmpty(currentVehicleName) && _clsFileEditor != null)
                {
                    lock (_vehicleDataLock)
                    {
                        _vehicleClsFilesCache[currentVehicleName] = _clsFileEditor.GetAllClsData();
                    }
                }

                // Thread-safe get all modified vehicle data
                var modifiedVehicleData = new Dictionary<string, Dictionary<string, object>>();
                var modifiedVehicleNames = new List<string>();
                
                lock (_modifiedVehiclesLock)
                {
                    modifiedVehicleNames.AddRange(_modifiedVehicles);
                }

                lock (_vehicleDataLock)
                {
                    foreach (var vehicleName in modifiedVehicleNames)
                    {
                        if (_vehicleDataCache.ContainsKey(vehicleName))
                        {
                            modifiedVehicleData[vehicleName] = _vehicleDataCache[vehicleName];
                        }
                    }
                }

                // Get all modified CLS files data
                var modifiedClsFilesData = new Dictionary<string, Dictionary<string, Dictionary<string, object>>>();
                lock (_vehicleDataLock)
                {
                    foreach (var vehicleName in modifiedVehicleNames)
                    {
                        if (_vehicleClsFilesCache.ContainsKey(vehicleName))
                        {
                            modifiedClsFilesData[vehicleName] = _vehicleClsFilesCache[vehicleName];
                        }
                    }
                }

                if (modifiedVehicleData.Count == 0)
                {
                    MessageBox.Show("No modified vehicle data found to save.", "Save Error",
                                  MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }

                StatusLabel.Text = $"Status: Saving {modifiedVehicleData.Count} modified vehicles...";

                // Save all modified vehicles including additional CLS files
                var results = await _vehicleSaveService.SaveMultipleVehiclesAsync(modifiedVehicleData, saveOption, modifiedClsFilesData);
                var successCount = results.Values.Count(result => result);

                if (successCount > 0)
                {
                    // Use BeginUpdate/EndUpdate when updating multiple vehicles
                    VehicleList.BeginUpdate();

                    try
                    {
                        // Thread-safe mark all successfully saved vehicles as saved and update UI
                        var savedVehicles = results.Where(kvp => kvp.Value).Select(kvp => kvp.Key).ToList();
                        
                        lock (_modifiedVehiclesLock)
                        {
                            foreach (var vehicleName in savedVehicles)
                            {
                                _modifiedVehicles.Remove(vehicleName);
                            }
                        }

                        foreach (var vehicleName in savedVehicles)
                        {
                            UpdateVehicleModificationStatus(vehicleName, false);
                        }
                    }
                    finally
                    {
                        VehicleList.EndUpdate();
                    }

                    StatusLabel.Text = $"Status: {successCount} of {modifiedVehicleData.Count} vehicles saved successfully";

                    string saveTypeText = saveOption switch
                    {
                        SaveOption.ToFile => "files",
                        SaveOption.ToFolderStructure => "folder structure",
                        SaveOption.ToPakFile => "PAK file",
                        _ => "unknown location"
                    };

                    // Count total files saved
                    var totalFiles = modifiedVehicleData.Count; // Main CLS files
                    foreach (var vehicleName in modifiedVehicleData.Keys)
                    {
                        if (modifiedClsFilesData.ContainsKey(vehicleName))
                        {
                            totalFiles += modifiedClsFilesData[vehicleName].Count;
                        }
                    }

                    MessageBox.Show($"{successCount} vehicles saved successfully ({totalFiles} files total) to {saveTypeText}.",
                                  "Save Complete", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    StatusLabel.Text = $"Status: Failed to save vehicles";
                    MessageBox.Show("Failed to save vehicles. Check the error messages for details.",
                                  "Save Failed", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private async Task LoadVehicleDataAsync(string vehicleName)
        {
            try
            {
                if (EnableVerboseDebug)
                {
                    System.Diagnostics.Debug.WriteLine($"=== STARTING LoadVehicleDataAsync for vehicle: {vehicleName} ===");
                }

                StatusLabel.Text = $"Status: Loading {vehicleName}...";

                // Use ConfigureAwait(false) for better performance
                var clsContent = await _fileLoadService.GetClsFileContentAsync(vehicleName).ConfigureAwait(false);

                if (clsContent != null && clsContent.Length > 0)
                {
                    // Update UI on main thread
                    this.Invoke(() => StatusLabel.Text = $"Status: Parsing {vehicleName}...");

                    // Parse on background thread for better performance
                    Dictionary<string, object>? parsedData = null;
                    await Task.Run(() =>
                    {
                        var clsString = Encoding.UTF8.GetString(clsContent);

                        if (EnableVerboseDebug)
                        {
                            System.Diagnostics.Debug.WriteLine($"=== ABOUT TO PARSE vehicle: {vehicleName} ===");
                            System.Diagnostics.Debug.WriteLine($"CLS content length: {clsString.Length}");
                            System.Diagnostics.Debug.WriteLine($"First 500 chars: {clsString.Substring(0, Math.Min(500, clsString.Length))}");
                        }

                        if (!string.IsNullOrWhiteSpace(clsString))
                        {
                            try
                            {
                                parsedData = _clsParser.Parse(clsString);
                                if (EnableVerboseDebug)
                                {
                                    System.Diagnostics.Debug.WriteLine($"=== SUCCESSFULLY PARSED vehicle: {vehicleName} ===");
                                }
                            }
                            catch (Exception ex)
                            {
                                if (EnableVerboseDebug)
                                {
                                    System.Diagnostics.Debug.WriteLine($"=== PARSE FAILED for vehicle: {vehicleName} ===");
                                    System.Diagnostics.Debug.WriteLine($"Exception: {ex.GetType().Name}: {ex.Message}");
                                }
                                parsedData = null;
                            }
                        }
                        else
                        {
                            parsedData = null;
                        }
                    }).ConfigureAwait(false);

                    // Thread-safe update of current vehicle data
                    lock (_currentVehicleDataLock)
                    {
                        _currentVehicleData = parsedData;
                    }

                    // Update UI on main thread
                    this.Invoke(() =>
                    {
                        if (parsedData != null)
                        {
                            StatusLabel.Text = $"Status: Loaded {vehicleName} ({parsedData.Count} properties)";
                        }
                        else
                        {
                            StatusLabel.Text = $"Status: Empty vehicle file - {vehicleName}";
                        }
                    });
                }
                else
                {
                    this.Invoke(() => StatusLabel.Text = $"Status: Failed to load {vehicleName} (no content)");
                    lock (_currentVehicleDataLock)
                    {
                        _currentVehicleData = null;
                    }
                }
            }
            catch (Exception ex)
            {
                if (EnableVerboseDebug)
                {
                    System.Diagnostics.Debug.WriteLine($"=== EXCEPTION in LoadVehicleDataAsync for vehicle: {vehicleName} ===");
                    System.Diagnostics.Debug.WriteLine($"Exception: {ex.GetType().Name}: {ex.Message}");
                }

                this.Invoke(() =>
                {
                    StatusLabel.Text = $"Status: Error loading {vehicleName}";
                });
                
                lock (_currentVehicleDataLock)
                {
                    _currentVehicleData = null;
                }
            }
        }

        /// <summary>
        /// Debug method to test a specific property path
        /// </summary>
        private void TestPropertyPath(string path)
        {
            Dictionary<string, object>? currentVehicleData;
            string currentVehicleName;
            
            lock (_currentVehicleDataLock)
            {
                currentVehicleData = _currentVehicleData;
                currentVehicleName = _currentVehicleName;
            }

            if (currentVehicleData == null)
            {
                MessageBox.Show("No vehicle loaded", "Test Property Path", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            var result = Properties.TestPropertyPath(currentVehicleData, path);

            var sb = new StringBuilder();
            sb.AppendLine($"Testing path: {path}");
            sb.AppendLine($"Vehicle: {currentVehicleName}");
            sb.AppendLine();
            sb.AppendLine($"Success: {result.Success}");

            if (result.Success)
            {
                sb.AppendLine($"Value: {result.Value?.ToString() ?? "null"}");
                sb.AppendLine($"Type: {result.ValueType}");
            }
            else
            {
                sb.AppendLine($"Error: {result.ErrorMessage}");
            }

            MessageBox.Show(sb.ToString(), "Property Path Test Result", MessageBoxButtons.OK,
                          result.Success ? MessageBoxIcon.Information : MessageBoxIcon.Warning);
        }

        private void MainActivity_KeyDown(object sender, KeyEventArgs e)
        {
            // Ctrl+Shift+T to test a property path
            if (e.Control && e.Shift && e.KeyCode == Keys.T)
            {
                ShowTestPropertyPathDialog();
                e.Handled = true;
            }
            // Ctrl+Shift+D to show all discovered paths
            else if (e.Control && e.Shift && e.KeyCode == Keys.D)
            {
                ShowDiscoveredPathsDebugInfo();
                e.Handled = true;
            }
            // Ctrl+Shift+H to show debug help
            else if (e.Control && e.Shift && e.KeyCode == Keys.H)
            {
                ShowDebugHelp();
                e.Handled = true;
            }
            // Ctrl+Shift+V to toggle verbose debug mode
            else if (e.Control && e.Shift && e.KeyCode == Keys.V)
            {
                ToggleVerboseDebugMode();
                e.Handled = true;
            }
            // Ctrl+Shift+C to show CLS files in current vehicle folder
            else if (e.Control && e.Shift && e.KeyCode == Keys.C)
            {
                ShowVehicleFolderContents();
                e.Handled = true;
            }
        }

        private void ShowTestPropertyPathDialog()
        {
            Dictionary<string, object>? currentVehicleData;
            lock (_currentVehicleDataLock)
            {
                currentVehicleData = _currentVehicleData;
            }

            if (currentVehicleData == null)
            {
                MessageBox.Show("No vehicle loaded", "Test Property Path", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            // Create a simple input dialog
            using var form = new Form
            {
                Text = "Test Property Path",
                Size = new Size(600, 150),
                StartPosition = FormStartPosition.CenterParent,
                FormBorderStyle = FormBorderStyle.FixedDialog,
                MaximizeBox = false,
                MinimizeBox = false
            };

            var label = new Label
            {
                Text = "Enter property path to test:",
                Location = new Point(10, 15),
                Size = new Size(200, 20)
            };

            var textBox = new TextBox
            {
                Location = new Point(10, 40),
                Size = new Size(560, 20),
                Text = "properties.prop_blueprints.blueprints.Engine.groups.\"[SOUND] acceleration input\".comment"
            };

            var btnTest = new Button
            {
                Text = "Test Path",
                Location = new Point(400, 70),
                Size = new Size(80, 25),
                DialogResult = DialogResult.OK
            };

            var btnCancel = new Button
            {
                Text = "Cancel",
                Location = new Point(490, 70),
                Size = new Size(80, 25),
                DialogResult = DialogResult.Cancel
            };

            form.Controls.AddRange(new Control[] { label, textBox, btnTest, btnCancel });
            form.AcceptButton = btnTest;
            form.CancelButton = btnCancel;

            if (form.ShowDialog() == DialogResult.OK && !string.IsNullOrWhiteSpace(textBox.Text))
            {
                TestPropertyPath(textBox.Text);
            }
        }

        private void ShowDiscoveredPathsDebugInfo()
        {
            Dictionary<string, object>? currentVehicleData;
            string currentVehicleName;
            
            lock (_currentVehicleDataLock)
            {
                currentVehicleData = _currentVehicleData;
                currentVehicleName = _currentVehicleName;
            }

            if (currentVehicleData == null || string.IsNullOrEmpty(currentVehicleName))
            {
                MessageBox.Show("No vehicle loaded", "Debug Info", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            var allPaths = Properties.DiscoverAvailablePropertyPaths(currentVehicleData);

            var sb = new StringBuilder();
            sb.AppendLine($"All discovered property paths for vehicle '{currentVehicleName}' ({allPaths.Count} paths):");
            sb.AppendLine();

            // Group paths by their prefixes for better readability
            var groupedPaths = allPaths.GroupBy(p => p.Split('.').FirstOrDefault() ?? "")
                                      .OrderBy(g => g.Key);

            foreach (var group in groupedPaths)
            {
                sb.AppendLine($"=== {group.Key} ===");
                foreach (var path in group.OrderBy(p => p))
                {
                    sb.AppendLine($"  {path}");
                }
                sb.AppendLine();
            }

            // Show in a scrollable window
            var form = new Form
            {
                Text = "All Discovered Property Paths - Debug Info",
                Size = new Size(1000, 700),
                StartPosition = FormStartPosition.CenterParent
            };

            var textBox = new TextBox
            {
                Multiline = true,
                ScrollBars = ScrollBars.Both,
                ReadOnly = true,
                Dock = DockStyle.Fill,
                Text = sb.ToString(),
                Font = GlobalConstants.Fonts.MonoFont // FIXED: Use cached font
            };

            form.Controls.Add(textBox);
            form.ShowDialog();
        }

        private async void ShowVehicleFolderContents()
        {
            string currentVehicleName;
            lock (_currentVehicleDataLock)
            {
                currentVehicleName = _currentVehicleName;
            }

            if (string.IsNullOrEmpty(currentVehicleName))
            {
                MessageBox.Show("No vehicle selected", "Debug CLS Files", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            try
            {
                var folderContents = await _fileLoadService.DebugGetVehicleFolderContentsAsync(currentVehicleName);
                
                var sb = new StringBuilder();
                foreach (var line in folderContents)
                {
                    sb.AppendLine(line);
                }

                // Show in a scrollable window
                var form = new Form
                {
                    Text = $"Vehicle Folder Contents - {currentVehicleName}",
                    Size = new Size(800, 600),
                    StartPosition = FormStartPosition.CenterParent
                };

                var textBox = new TextBox
                {
                    Multiline = true,
                    ScrollBars = ScrollBars.Both,
                    ReadOnly = true,
                    Dock = DockStyle.Fill,
                    Text = sb.ToString(),
                    Font = GlobalConstants.Fonts.MonoFont // FIXED: Use cached font
                };

                form.Controls.Add(textBox);
                form.ShowDialog();
            }
            catch (Exception ex)
            {
                ErrorHelper.ShowLoadError("vehicle folder examination", ex.Message);
            }
        }

        /// <summary>
        /// Loads all CLS files for the current vehicle
        /// </summary>
        private async Task LoadClsFilesForVehicleAsync(string vehicleName)
        {
            if (_clsFileEditor == null)
                return;

            try
            {
                // Thread-safe check if we have cached CLS files data
                Dictionary<string, Dictionary<string, object>>? cachedData = null;
                lock (_vehicleDataLock)
                {
                    if (_vehicleClsFilesCache.ContainsKey(vehicleName))
                    {
                        cachedData = _vehicleClsFilesCache[vehicleName];
                    }
                }

                if (cachedData != null)
                {
                    // Convert cached data to the format expected by ClsFileEditor
                    var clsFilesData = new Dictionary<string, (string fileName, byte[] content)>();
                    
                    foreach (var kvp in cachedData)
                    {
                        // Generate CLS content from cached data
                        var clsParser = new ClsFileParser();
                        var clsContent = clsParser.Generate(kvp.Value);
                        var content = Encoding.UTF8.GetBytes(clsContent);
                        clsFilesData[kvp.Key] = (kvp.Key, content);
                    }

                    await _clsFileEditor.LoadClsFilesAsync(vehicleName, clsFilesData);
                }
                else
                {
                    // Load CLS files from the file system
                    var clsFiles = await _fileLoadService.GetAllClsFilesInVehicleFolderAsync(vehicleName);
                    await _clsFileEditor.LoadClsFilesAsync(vehicleName, clsFiles);

                    // Thread-safe cache the loaded data
                    if (clsFiles.Count > 0)
                    {
                        var clsFilesData = new Dictionary<string, Dictionary<string, object>>();
                        var allClsData = _clsFileEditor.GetAllClsData();
                        
                        foreach (var kvp in allClsData)
                        {
                            clsFilesData[kvp.Key] = new Dictionary<string, object>(kvp.Value);
                        }
                        
                        lock (_vehicleDataLock)
                        {
                            _vehicleClsFilesCache[vehicleName] = clsFilesData;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                StatusLabel.Text = $"Status: Error loading CLS files for {vehicleName}";
                System.Diagnostics.Debug.WriteLine($"Error loading CLS files: {ex.Message}");
            }
        }
    }

    // Helper class to wrap vehicle info with modified status
    public class ModifiedVehicleInfo
    {
        public FileLoadService.VehicleInfo OriginalInfo { get; }
        public bool IsModified { get; }

        public ModifiedVehicleInfo(FileLoadService.VehicleInfo originalInfo, bool isModified)
        {
            OriginalInfo = originalInfo;
            IsModified = isModified;
        }

        public override string ToString()
        {
            return IsModified ? $"{OriginalInfo.Name} *" : OriginalInfo.Name;
        }
    }
}
