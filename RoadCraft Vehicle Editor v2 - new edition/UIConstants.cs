namespace RoadCraft_Vehicle_Editor_v2___new_edition
{
    /// <summary>
    /// UI-specific constants for layout and styling (references GlobalConstants)
    /// </summary>
    public static class UIConstants
    {
        // === Layout Constants (from GlobalConstants) ===
        public const int LeftMargin = GlobalConstants.LeftMargin;
        public const int LabelWidth = GlobalConstants.LabelWidth;
        public const int ControlWidth = GlobalConstants.ControlWidth;
        public const int ControlHeight = GlobalConstants.ControlHeight;
        public const int ControlSpacing = GlobalConstants.ControlSpacing;
        public const int CategorySpacing = GlobalConstants.CategorySpacing;
        public const int SeparatorHeight = GlobalConstants.SeparatorHeight;
        
        // === Table Layout Constants (from GlobalConstants) ===
        public const int TableLeftMargin = GlobalConstants.TableLeftMargin;
        public const int TableHeaderHeight = GlobalConstants.TableHeaderHeight;
        public const int TableSpacing = GlobalConstants.TableSpacing;
        public const int MinColumnWidth = GlobalConstants.MinColumnWidth;
        public const int MinRowHeight = GlobalConstants.MinRowHeight;
        public const int CellPadding = GlobalConstants.CellPadding;
        
        // === Performance Constants (from GlobalConstants) ===
        public const int TextChangeDelay = GlobalConstants.TextChangeDelay;
        
        // === Shortcut access to Colors ===
        public static class Colors
        {
            public static readonly System.Drawing.Color BackgroundLight = GlobalConstants.Colors.BackgroundLight;
            public static readonly System.Drawing.Color BackgroundMedium = GlobalConstants.Colors.BackgroundMedium;
            public static readonly System.Drawing.Color BackgroundDark = GlobalConstants.Colors.BackgroundDark;
            
            public static readonly System.Drawing.Color TextPrimary = GlobalConstants.Colors.TextPrimary;
            public static readonly System.Drawing.Color TextSecondary = GlobalConstants.Colors.TextSecondary;
            public static readonly System.Drawing.Color TextMuted = GlobalConstants.Colors.TextMuted;
            
            public static readonly System.Drawing.Color BorderLight = GlobalConstants.Colors.BorderLight;
            public static readonly System.Drawing.Color BorderMedium = GlobalConstants.Colors.BorderMedium;
            public static readonly System.Drawing.Color BorderDark = GlobalConstants.Colors.BorderDark;
            
            public static readonly System.Drawing.Color Modified = GlobalConstants.Colors.Modified;
            public static readonly System.Drawing.Color ModifiedBackground = GlobalConstants.Colors.ModifiedBackground;
            public static readonly System.Drawing.Color Error = GlobalConstants.Colors.Error;
            public static readonly System.Drawing.Color ErrorBackground = GlobalConstants.Colors.ErrorBackground;
            public static readonly System.Drawing.Color Warning = GlobalConstants.Colors.Warning;
            public static readonly System.Drawing.Color WarningBackground = GlobalConstants.Colors.WarningBackground;
            
            public static readonly System.Drawing.Color Focus = GlobalConstants.Colors.Focus;
            public static readonly System.Drawing.Color Hover = GlobalConstants.Colors.Hover;
            public static readonly System.Drawing.Color HoverTable = GlobalConstants.Colors.HoverTable;
            
            public static readonly System.Drawing.Color TooltipBackground = GlobalConstants.Colors.TooltipBackground;
            public static readonly System.Drawing.Color TooltipText = GlobalConstants.Colors.TooltipText;
        }
        
        // === Shortcut access to Fonts ===
        public static class Fonts
        {
            public const string PrimaryFontFamily = GlobalConstants.Fonts.PrimaryFontFamily;
            public const float HeaderFontSize = GlobalConstants.Fonts.HeaderFontSize;
            public const float SubHeaderFontSize = GlobalConstants.Fonts.SubHeaderFontSize;
            public const float DefaultFontSize = GlobalConstants.Fonts.DefaultFontSize;
            public const float TableFontSize = GlobalConstants.Fonts.TableFontSize;
            public const float SmallFontSize = GlobalConstants.Fonts.SmallFontSize;
            public const float MonoFontSize = GlobalConstants.Fonts.MonoFontSize;
            public const string MonoFontFamily = GlobalConstants.Fonts.MonoFontFamily;
        }
    }
}