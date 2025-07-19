namespace RoadCraft_Vehicle_Editor_v2___new_edition
{
    internal static class Program
    {
        /// <summary>
        ///  The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            try
            {
                // To customize application configuration such as set high DPI settings or default font,
                // see https://aka.ms/applicationconfiguration.
                ApplicationConfiguration.Initialize();
                
                // Initialize global configuration
                _ = GlobalConfig.AppSettings; // This will trigger the static constructor
                
                Application.Run(new MainActivity());
            }
            finally
            {
                // Clean up shared resources to prevent memory leaks
                GlobalConstants.Fonts.DisposeSharedResources();
                UIUtils.DisposeSharedResources();
            }
        }
    }
}