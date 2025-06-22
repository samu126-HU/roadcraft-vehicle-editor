using System.Runtime.InteropServices;

namespace RoadCraft_Vehicle_Editorv2
{
    internal static class Program
    {
        [STAThread]
        static void Main()
        {
            Application.SetHighDpiMode(HighDpiMode.PerMonitorV2);
            ApplicationConfiguration.Initialize();
            Application.Run(new Form1());
        }
    }
}