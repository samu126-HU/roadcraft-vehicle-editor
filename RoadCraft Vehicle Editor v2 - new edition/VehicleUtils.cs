using System.IO.Compression;
using System.Text;

namespace RoadCraft_Vehicle_Editor_v2___new_edition
{
    /// <summary>
    /// Utility class for common vehicle-related operations
    /// </summary>
    public static class VehicleUtils
    {
        /// <summary>
        /// Sorts items with "Other" category appearing last
        /// </summary>
        public static IOrderedEnumerable<T> SortWithOtherLast<T>(IEnumerable<T> items, Func<T, string> categorySelector)
        {
            return items.OrderBy(item => categorySelector(item) == "Other" ? 1 : 0) // "Other" goes to end
                       .ThenBy(categorySelector); // All other categories sorted alphabetically
        }

        /// <summary>
        /// Sorts group collections with "Other" category appearing last
        /// </summary>
        public static IOrderedEnumerable<IGrouping<string, T>> SortGroupsWithOtherLast<T>(IEnumerable<IGrouping<string, T>> groups)
        {
            return groups.OrderBy(g => g.Key == "Other" ? 1 : 0) // "Other" goes to end
                        .ThenBy(g => g.Key); // All other categories sorted alphabetically
        }

        /// <summary>
        /// Validates RoadCraft environment and returns PAK file path if valid
        /// </summary>
        public static bool ValidateRoadCraftEnvironment(out string pakFilePath)
        {
            pakFilePath = string.Empty;
            
            var roadCraftFolder = GlobalConfig.AppSettings.RoadCraftFolder;
            if (string.IsNullOrEmpty(roadCraftFolder) || !Directory.Exists(roadCraftFolder))
            {
                return false;
            }

            pakFilePath = Path.Combine(roadCraftFolder, FileConstants.PakPath);
            return File.Exists(pakFilePath);
        }

        /// <summary>
        /// Filters out base and preview folders from archive entries
        /// </summary>
        public static IEnumerable<ZipArchiveEntry> FilterNonBasePreview(this IEnumerable<ZipArchiveEntry> entries)
        {
            return entries.Where(entry => !entry.FullName.Contains(FileConstants.BaseFolder, StringComparison.OrdinalIgnoreCase))
                         .Where(entry => !entry.FullName.Contains(FileConstants.PreviewFolder, StringComparison.OrdinalIgnoreCase));
        }

        /// <summary>
        /// Creates atomic file replacement using temporary file and move operation
        /// </summary>
        public static void ReplaceFileAtomic(string originalPath, string newContent, Encoding encoding)
        {
            var tempPath = originalPath + "." + GlobalConstants.TempFilePrefix + Guid.NewGuid().ToString("N")[..8];
            try
            {
                // Write to temporary file first
                File.WriteAllText(tempPath, newContent, encoding);
                
                // Create backup if original exists
                var backupPath = originalPath + "." + GlobalConstants.BackupFilePrefix;
                if (File.Exists(originalPath) && !File.Exists(backupPath))
                {
                    File.Copy(originalPath, backupPath, true);
                }
                
                // Atomic replacement
                if (File.Exists(originalPath))
                {
                    File.Replace(tempPath, originalPath, null);
                }
                else
                {
                    File.Move(tempPath, originalPath);
                }
            }
            catch
            {
                if (File.Exists(tempPath))
                {
                    try { File.Delete(tempPath); } catch { }
                }
                throw;
            }
        }
    }

    /// <summary>
    /// Constants for file paths and common strings
    /// </summary>
    public static class FileConstants
    {
        public const string PakPath = "root\\paks\\client\\default\\default_other.pak";
        public const string TrucksPath = "ssl/autogen_designer_wizard/trucks";
        public const string AutoPrefix = "auto_";
        public const string BaseFolder = "/base/";
        public const string PreviewFolder = "/preview/";
    }

    /// <summary>
    /// Centralized error message helper that uses GlobalConstants
    /// </summary>
    public static class ErrorHelper
    {
        public static void ShowSaveError(string context, string details)
        {
            MessageBox.Show($"Error saving {context}: {details}", 
                          GlobalConstants.Messages.SaveFailed, 
                          MessageBoxButtons.OK, MessageBoxIcon.Error);
        }

        public static void ShowSaveWarning(string context, string details)
        {
            MessageBox.Show($"Warning while saving {context}: {details}", 
                          "Save Warning", 
                          MessageBoxButtons.OK, MessageBoxIcon.Warning);
        }

        public static void ShowLoadError(string context, string details)
        {
            MessageBox.Show($"Error loading {context}: {details}", 
                          "Load Error", 
                          MessageBoxButtons.OK, MessageBoxIcon.Error);
        }

        public static void ShowConfigError(string details)
        {
            MessageBox.Show(details, 
                          "Configuration Error", 
                          MessageBoxButtons.OK, MessageBoxIcon.Error);
        }
    }
}