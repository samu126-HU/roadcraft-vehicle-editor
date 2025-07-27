using System.IO;
using System.Drawing;

namespace RoadCraft_Vehicle_Editor_v2___new_edition
{
    /// <summary>
    /// Global constants used throughout the application
    /// </summary>
    public static class GlobalConstants
    {
        // === Application Constants ===
        public const string AppName = "RoadCraft Vehicle Editor v2";
        public const string ConfigFileName = "app_settings.json";
        public const string VehiclePropertiesFileName = "vehicle_properties.json";
        public const string ExceptionLogFileName = "exception_log.txt";
        
        // === File System Constants ===
        public const string TrucksSubfolder = "Trucks";
        public const string PakFileExtension = ".pak";
        public const string ClsFileExtension = ".cls";
        public const string JsonFileExtension = ".json";
        
        // === RoadCraft Default Paths ===
        public static readonly string DefaultRoadCraftPath = Path.Combine(
            Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments),
            "My Games", "SnowRunner", "base", "Mods", ".modio", "mods");
        
        public static readonly string DefaultTrucksPath = Path.Combine(DefaultRoadCraftPath, TrucksSubfolder);
        
        // === UI Layout Constants ===
        public const int LeftMargin = 15;
        public const int LabelWidth = 200;
        public const int ControlWidth = 250;
        public const int ControlHeight = 23;
        public const int ControlSpacing = 10;
        public const int CategorySpacing = 15;
        public const int SeparatorHeight = 1;
        
        // === Table Layout Constants ===
        public const int TableLeftMargin = 15;
        public const int TableHeaderHeight = 30;
        public const int TableSpacing = 20;
        public const int MinColumnWidth = 120;
        public const int MinRowHeight = 35;
        public const int CellPadding = 16;
        
        // === Performance Constants ===
        public const int TextChangeDelay = 500; // milliseconds
        public const int FileOperationTimeout = 30000; // 30 seconds
        public const int MaxCacheSize = 100; // maximum number of cached vehicles
        
        // === Debug Constants ===
        public const int MaxDebugStringLength = 1000;
        public const string DebugPrefix = "=== ";
        public const string DebugSuffix = " ===";
        
        // === Save File Constants ===
        public const string SavedVehiclesPrefix = "saved_vehicles_";
        public const string TempFilePrefix = "temp_vehicle_";
        public const string BackupFilePrefix = "backup_";
        
        // === Color Constants (RGB values) ===
        public static class Colors
        {
            // Background colors
            public static readonly System.Drawing.Color BackgroundLight = System.Drawing.Color.FromArgb(250, 251, 252);
            public static readonly System.Drawing.Color BackgroundMedium = System.Drawing.Color.FromArgb(248, 249, 250);
            public static readonly System.Drawing.Color BackgroundDark = System.Drawing.Color.FromArgb(241, 245, 249);
            
            // Text colors
            public static readonly System.Drawing.Color TextPrimary = System.Drawing.Color.FromArgb(55, 65, 81);
            public static readonly System.Drawing.Color TextSecondary = System.Drawing.Color.FromArgb(75, 85, 99);
            public static readonly System.Drawing.Color TextMuted = System.Drawing.Color.FromArgb(120, 120, 120);
            
            // Border colors
            public static readonly System.Drawing.Color BorderLight = System.Drawing.Color.FromArgb(229, 231, 235);
            public static readonly System.Drawing.Color BorderMedium = System.Drawing.Color.FromArgb(209, 213, 219);
            public static readonly System.Drawing.Color BorderDark = System.Drawing.Color.FromArgb(203, 213, 225);
            
            // State colors
            public static readonly System.Drawing.Color Modified = System.Drawing.Color.FromArgb(192, 132, 252);
            public static readonly System.Drawing.Color ModifiedBackground = System.Drawing.Color.FromArgb(250, 245, 255);
            public static readonly System.Drawing.Color Error = System.Drawing.Color.FromArgb(220, 38, 127);
            public static readonly System.Drawing.Color ErrorBackground = System.Drawing.Color.FromArgb(255, 240, 240);
            public static readonly System.Drawing.Color Warning = System.Drawing.Color.FromArgb(251, 191, 36);
            public static readonly System.Drawing.Color WarningBackground = System.Drawing.Color.FromArgb(254, 249, 195);
            
            // Focus and hover colors
            public static readonly System.Drawing.Color Focus = System.Drawing.Color.FromArgb(230, 244, 255);
            public static readonly System.Drawing.Color Hover = System.Drawing.Color.FromArgb(248, 250, 252);
            public static readonly System.Drawing.Color HoverTable = System.Drawing.Color.FromArgb(240, 248, 255);
            
            // Tooltip colors
            public static readonly System.Drawing.Color TooltipBackground = System.Drawing.Color.FromArgb(45, 45, 45);
            public static readonly System.Drawing.Color TooltipText = System.Drawing.Color.White;
        }
        
        // === Font Constants ===
        public static class Fonts
        {
            public const string PrimaryFontFamily = "Segoe UI";
            public const float HeaderFontSize = 13f;
            public const float SubHeaderFontSize = 11f;
            public const float DefaultFontSize = 9f;
            public const float TableFontSize = 8.5f;
            public const float SmallFontSize = 8f;
            public const float MonoFontSize = 9f;
            public const string MonoFontFamily = "Consolas";
            
            // Cached fonts to prevent memory leaks
            private static readonly Lazy<Font> _headerFont = new(() => new Font(PrimaryFontFamily, HeaderFontSize, FontStyle.Bold));
            private static readonly Lazy<Font> _subHeaderFont = new(() => new Font(PrimaryFontFamily, SubHeaderFontSize, FontStyle.Bold));
            private static readonly Lazy<Font> _defaultFont = new(() => new Font(PrimaryFontFamily, DefaultFontSize, FontStyle.Regular));
            private static readonly Lazy<Font> _defaultBoldFont = new(() => new Font(PrimaryFontFamily, DefaultFontSize, FontStyle.Bold));
            private static readonly Lazy<Font> _tableFont = new(() => new Font(PrimaryFontFamily, TableFontSize, FontStyle.Regular));
            private static readonly Lazy<Font> _tableBoldFont = new(() => new Font(PrimaryFontFamily, TableFontSize, FontStyle.Bold));
            private static readonly Lazy<Font> _smallFont = new(() => new Font(PrimaryFontFamily, SmallFontSize, FontStyle.Regular));
            private static readonly Lazy<Font> _monoFont = new(() => new Font(MonoFontFamily, MonoFontSize, FontStyle.Regular));
            private static readonly Lazy<Font> _subHeaderItalicFont = new(() => new Font(PrimaryFontFamily, SubHeaderFontSize, FontStyle.Italic));
            
            // Public accessors for cached fonts
            public static Font HeaderFont => _headerFont.Value;
            public static Font SubHeaderFont => _subHeaderFont.Value;
            public static Font DefaultFont => _defaultFont.Value;
            public static Font DefaultBoldFont => _defaultBoldFont.Value;
            public static Font TableFont => _tableFont.Value;
            public static Font TableBoldFont => _tableBoldFont.Value;
            public static Font SmallFont => _smallFont.Value;
            public static Font MonoFont => _monoFont.Value;
            public static Font SubHeaderItalicFont => _subHeaderItalicFont.Value;
            
            /// <summary>
            /// Dispose all cached fonts when the application shuts down
            /// </summary>
            public static void DisposeSharedResources()
            {
                if (_headerFont.IsValueCreated) _headerFont.Value.Dispose();
                if (_subHeaderFont.IsValueCreated) _subHeaderFont.Value.Dispose();
                if (_defaultFont.IsValueCreated) _defaultFont.Value.Dispose();
                if (_defaultBoldFont.IsValueCreated) _defaultBoldFont.Value.Dispose();
                if (_tableFont.IsValueCreated) _tableFont.Value.Dispose();
                if (_tableBoldFont.IsValueCreated) _tableBoldFont.Value.Dispose();
                if (_smallFont.IsValueCreated) _smallFont.Value.Dispose();
                if (_monoFont.IsValueCreated) _monoFont.Value.Dispose();
                if (_subHeaderItalicFont.IsValueCreated) _subHeaderItalicFont.Value.Dispose();
            }
        }
        
        // === Validation Constants ===
        public const int MinVehicleNameLength = 1;
        public const int MaxVehicleNameLength = 100;
        public const int MinPropertyPathLength = 3;
        public const int MaxPropertyPathLength = 500;
        public const int MaxFileSize = 50 * 1024 * 1024; // 50MB
        
        // === Thread Safety Constants ===
        public const int MaxLockTimeout = 5000; // 5 seconds
        public const int RetryAttempts = 3;
        public const int RetryDelay = 1000; // 1 second
        
        // === Keyboard Shortcut Constants ===
        public static class Shortcuts
        {
            public const Keys TestPropertyPath = Keys.Control | Keys.Shift | Keys.T;
            public const Keys ShowDiscoveredPaths = Keys.Control | Keys.Shift | Keys.D;
            public const Keys ShowDebugHelp = Keys.Control | Keys.Shift | Keys.H;
            public const Keys ToggleVerboseDebug = Keys.Control | Keys.Shift | Keys.V;
            public const Keys ShowClsFiles = Keys.Control | Keys.Shift | Keys.C;
        }
        
        // === UI Messages ===
        public static class Messages
        {
            public const string NoVehicleLoaded = "No vehicle loaded";
            public const string NoVehicleSelected = "No vehicle selected";
            public const string LoadingVehicles = "Status: Loading vehicles...";
            public const string ErrorLoadingVehicles = "Status: Error loading vehicles";
            public const string NoVehiclesFound = "Status: No vehicles found";
            public const string VehicleModified = "vehicle(s) modified";
            public const string SaveComplete = "Save Complete";
            public const string SaveFailed = "Save Failed";
            public const string InvalidInput = "Invalid Input";
            public const string PropertyUpdateError = "Property Update Error";
        }
        
        // === Development Constants ===
        public static class Development
        {
            public const bool EnableDebugOutput = true;
            public const bool EnablePerformanceCounters = false;
            public const bool EnableMemoryProfiling = false;
            public const int DebugBufferSize = 10000;
        }
    }
}