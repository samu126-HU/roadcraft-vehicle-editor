using System;
using System.Collections.Generic;
using System.IO;
using System.IO.Compression;
using System.Linq;
using System.Text;

namespace RoadCraft_Vehicle_Editorv2.Helper
{
    public class HelperBackend
    {
        #region Pak File Operations

        public void AddOrReplaceFileInPak(string pakPath, string fileToAddPath, string entryName)
        {
            using (var zip = ZipFile.Open(pakPath, ZipArchiveMode.Update))
            {
                var oldEntry = zip.GetEntry(entryName);
                oldEntry?.Delete();

                zip.CreateEntryFromFile(fileToAddPath, entryName, CompressionLevel.Optimal);
            }
        }

        #endregion

        #region Save Options

        public enum SaveOption
        {
            File,
            Pak,
            Folder,
            Cancel
        }

        #endregion

        #region Vehicle Loading

        public static Dictionary<string, string> LoadVehiclesFromPak()
        {
            var result = new Dictionary<string, string>();
            using (var ofd = new System.Windows.Forms.OpenFileDialog
            {
                Filter = "PAK files (*.pak)|*.pak",
                Title = "Select default_other.pak"
            })
            {
                if (ofd.ShowDialog() != System.Windows.Forms.DialogResult.OK)
                    return result;

                using (var zip = ZipFile.OpenRead(ofd.FileName))
                {
                    foreach (var entry in zip.Entries)
                    {
                        if (!entry.FullName.StartsWith("ssl/autogen_designer_wizard/trucks/", StringComparison.OrdinalIgnoreCase))
                            continue;

                        var parts = entry.FullName.Split('/');
                        if (parts.Length < 5)
                            continue;

                        string folder = parts[4];
                        if (!folder.StartsWith("auto_", StringComparison.OrdinalIgnoreCase))
                            continue;

                        if (entry.FullName.EndsWith(".cls", StringComparison.OrdinalIgnoreCase))
                        {
                            using var stream = entry.Open();
                            using var reader = new StreamReader(stream, Encoding.UTF8);
                            string content = reader.ReadToEnd();
                            string vehicleName = Path.GetFileNameWithoutExtension(entry.Name);
                            result[vehicleName] = content;
                        }
                    }
                }
            }
            return result;
        }

        public static Dictionary<string, string> LoadVehiclesFromPakWithPath(string pakPath)
        {
            var result = new Dictionary<string, string>();
            using (var zip = ZipFile.OpenRead(pakPath))
            {
                foreach (var entry in zip.Entries)
                {
                    if (!entry.FullName.StartsWith("ssl/autogen_designer_wizard/trucks/", StringComparison.OrdinalIgnoreCase))
                        continue;

                    var parts = entry.FullName.Split('/');
                    if (parts.Length != 5)
                        continue;

                    string folder = parts[3];
                    string fileName = Path.GetFileNameWithoutExtension(parts[4]);

                    if (!folder.StartsWith("auto_", StringComparison.OrdinalIgnoreCase) ||
                        !parts[4].EndsWith(".cls", StringComparison.OrdinalIgnoreCase) ||
                        !string.Equals(folder, fileName, StringComparison.OrdinalIgnoreCase))
                        continue;

                    using var stream = entry.Open();
                    using var reader = new StreamReader(stream, Encoding.UTF8);
                    string content = reader.ReadToEnd();
                    result[fileName] = content;
                }
            }
            return result;
        }

        #endregion
    }
}