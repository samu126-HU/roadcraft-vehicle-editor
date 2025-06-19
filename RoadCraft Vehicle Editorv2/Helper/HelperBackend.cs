using System;
using System.Collections.Generic;
using System.IO.Compression;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RoadCraft_Vehicle_Editorv2.Helper
{
    public class HelperBackend
    {
        // pak save method
        public void AddOrReplaceFileInPak(string pakPath, string fileToAddPath, string entryName)
        {
            using (var zip = ZipFile.Open(pakPath, ZipArchiveMode.Update))
            {
                var oldEntry = zip.GetEntry(entryName);
                oldEntry?.Delete();

                zip.CreateEntryFromFile(fileToAddPath, entryName, CompressionLevel.Optimal);
            }
        }

        //options for saving
        public enum SaveOption
        {
            File,
            Pak,
            Folder,
            Cancel
        }
    }
}
