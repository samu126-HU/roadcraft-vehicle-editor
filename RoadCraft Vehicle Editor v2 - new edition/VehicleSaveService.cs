using System.IO;
using System.IO.Compression;
using System.Text;
using ClsParser.Library;

namespace RoadCraft_Vehicle_Editor_v2___new_edition
{
    public enum SaveOption
    {
        ToFile,
        ToFolderStructure,
        ToPakFile
    }

    public class VehicleSaveService
    {
        // UTF-8 encoding without BOM - critical for CLS files
        private static readonly UTF8Encoding UTF8NoBOM = new UTF8Encoding(false);

        public async Task<bool> SaveVehicleAsync(string vehicleName, Dictionary<string, object> vehicleData, SaveOption saveOption, Dictionary<string, Dictionary<string, object>>? additionalClsFiles = null)
        {
            try
            {
                // Generate the CLS content
                var clsParser = new ClsFileParser();
                var clsContent = clsParser.Generate(vehicleData);
                
                switch (saveOption)
                {
                    case SaveOption.ToFile:
                        return await SaveToFileAsync(vehicleName, clsContent, additionalClsFiles);
                    case SaveOption.ToFolderStructure:
                        return await SaveToFolderStructureAsync(vehicleName, clsContent, additionalClsFiles);
                    case SaveOption.ToPakFile:
                        return await SaveToPakFileAsync(vehicleName, clsContent, additionalClsFiles);
                    default:
                        return false;
                }
            }
            catch (Exception ex)
            {
                ErrorHelper.ShowSaveError($"vehicle '{vehicleName}'", ex.Message);
                return false;
            }
        }

        public async Task<Dictionary<string, bool>> SaveMultipleVehiclesAsync(
            Dictionary<string, Dictionary<string, object>> vehicleDataMap, 
            SaveOption saveOption,
            Dictionary<string, Dictionary<string, Dictionary<string, object>>>? vehicleClsFilesMap = null)
        {
            var results = new Dictionary<string, bool>();
            
            switch (saveOption)
            {
                case SaveOption.ToFile:
                    return await SaveMultipleToFilesAsync(vehicleDataMap, vehicleClsFilesMap);
                case SaveOption.ToFolderStructure:
                    var folderSuccess = await SaveMultipleToFolderStructureAsync(vehicleDataMap, vehicleClsFilesMap);
                    foreach (var vehicle in vehicleDataMap.Keys)
                    {
                        results[vehicle] = folderSuccess;
                    }
                    return results;
                case SaveOption.ToPakFile:
                    var pakSuccess = await SaveMultipleToPakFileAsync(vehicleDataMap, vehicleClsFilesMap);
                    foreach (var vehicle in vehicleDataMap.Keys)
                    {
                        results[vehicle] = pakSuccess;
                    }
                    return results;
                default:
                    foreach (var vehicle in vehicleDataMap.Keys)
                    {
                        results[vehicle] = false;
                    }
                    return results;
            }
        }

        private async Task<Dictionary<string, bool>> SaveMultipleToFilesAsync(
            Dictionary<string, Dictionary<string, object>> vehicleDataMap,
            Dictionary<string, Dictionary<string, Dictionary<string, object>>>? vehicleClsFilesMap = null)
        {
            var results = new Dictionary<string, bool>();
            
            using var folderDialog = new FolderBrowserDialog
            {
                Description = "Select destination folder for the vehicle files",
                ShowNewFolderButton = true
            };

            if (folderDialog.ShowDialog() == DialogResult.OK)
            {
                var destinationPath = folderDialog.SelectedPath;
                var clsParser = new ClsFileParser();
                var savedCount = 0;
                var totalCount = vehicleDataMap.Count;
                var totalFilesCount = 0;

                foreach (var kvp in vehicleDataMap)
                {
                    var vehicleName = kvp.Key;
                    var vehicleData = kvp.Value;
                    var filesCount = 0;

                    try
                    {
                        // Save main CLS file
                        var clsContent = clsParser.Generate(vehicleData);
                        var fileName = $"{FileConstants.AutoPrefix}{vehicleName}.cls";
                        var filePath = Path.Combine(destinationPath, fileName);

                        // Use UTF-8 without BOM for CLS files
                        await File.WriteAllTextAsync(filePath, clsContent, UTF8NoBOM);
                        filesCount++;
                        
                        // Save additional CLS files if any
                        if (vehicleClsFilesMap?.ContainsKey(vehicleName) == true)
                        {
                            var additionalFiles = vehicleClsFilesMap[vehicleName];
                            foreach (var clsFileKvp in additionalFiles)
                            {
                                var clsFileName = clsFileKvp.Key;
                                var clsFileData = clsFileKvp.Value;
                                
                                try
                                {
                                    var additionalClsContent = clsParser.Generate(clsFileData);
                                    var additionalFilePath = Path.Combine(destinationPath, $"{vehicleName}_{clsFileName}");
                                    await File.WriteAllTextAsync(additionalFilePath, additionalClsContent, UTF8NoBOM);
                                    filesCount++;
                                }
                                catch (Exception ex)
                                {
                                    ErrorHelper.ShowSaveWarning($"additional CLS file '{clsFileName}' for vehicle '{vehicleName}'", ex.Message);
                                }
                            }
                        }
                        
                        results[vehicleName] = true;
                        savedCount++;
                        totalFilesCount += filesCount;
                    }
                    catch (Exception ex)
                    {
                        ErrorHelper.ShowSaveError($"vehicle '{vehicleName}'", ex.Message);
                        results[vehicleName] = false;
                    }
                }

                MessageBox.Show($"Saved {savedCount} vehicles ({totalFilesCount} files total) to: {destinationPath}", 
                              GlobalConstants.Messages.SaveComplete, MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                foreach (var vehicle in vehicleDataMap.Keys)
                {
                    results[vehicle] = false;
                }
            }

            return results;
        }

        private async Task<bool> SaveToFileAsync(string vehicleName, string clsContent, Dictionary<string, Dictionary<string, object>>? additionalClsFiles = null)
        {
            using var saveDialog = new SaveFileDialog
            {
                Filter = "CLS files (*.cls)|*.cls|All files (*.*)|*.*",
                FileName = $"{FileConstants.AutoPrefix}{vehicleName}.cls",
                DefaultExt = "cls"
            };

            if (saveDialog.ShowDialog() == DialogResult.OK)
            {
                var mainFilePath = saveDialog.FileName;
                var mainFileDirectory = Path.GetDirectoryName(mainFilePath);
                var filesCount = 1;
                
                try
                {
                    // Save main CLS file with UTF-8 without BOM
                    await File.WriteAllTextAsync(mainFilePath, clsContent, UTF8NoBOM);
                    
                    // Save additional CLS files if any
                    if (additionalClsFiles != null && additionalClsFiles.Count > 0)
                    {
                        var clsParser = new ClsFileParser();
                        
                        foreach (var kvp in additionalClsFiles)
                        {
                            try
                            {
                                var additionalContent = clsParser.Generate(kvp.Value);
                                var additionalFileName = $"{vehicleName}_{kvp.Key}";
                                var additionalFilePath = Path.Combine(mainFileDirectory ?? "", additionalFileName);
                                await File.WriteAllTextAsync(additionalFilePath, additionalContent, UTF8NoBOM);
                                filesCount++;
                            }
                            catch (Exception ex)
                            {
                                ErrorHelper.ShowSaveWarning($"additional CLS file '{kvp.Key}' for vehicle '{vehicleName}'", ex.Message);
                            }
                        }
                    }
                    
                    MessageBox.Show($"Vehicle saved ({filesCount} files) to: {mainFilePath}", GlobalConstants.Messages.SaveComplete, 
                                  MessageBoxButtons.OK, MessageBoxIcon.Information);
                    return true;
                }
                catch (Exception ex)
                {
                    ErrorHelper.ShowSaveError($"vehicle '{vehicleName}' to file", ex.Message);
                    return false;
                }
            }
            return false;
        }

        private async Task<bool> SaveToFolderStructureAsync(string vehicleName, string clsContent, Dictionary<string, Dictionary<string, object>>? additionalClsFiles = null)
        {
            using var folderDialog = new FolderBrowserDialog
            {
                Description = "Select destination folder for the vehicle structure",
                ShowNewFolderButton = true
            };

            if (folderDialog.ShowDialog() == DialogResult.OK)
            {
                var destinationPath = folderDialog.SelectedPath;
                var vehicleFolderPath = Path.Combine(destinationPath, FileConstants.TrucksPath, $"{FileConstants.AutoPrefix}{vehicleName}");
                
                // Create the directory structure
                Directory.CreateDirectory(vehicleFolderPath);
                
                // Save the main CLS file with UTF-8 without BOM
                var clsFilePath = Path.Combine(vehicleFolderPath, $"{FileConstants.AutoPrefix}{vehicleName}.cls");
                await File.WriteAllTextAsync(clsFilePath, clsContent, UTF8NoBOM);
                
                var filesCount = 1;
                
                // Save additional CLS files if any
                if (additionalClsFiles != null && additionalClsFiles.Count > 0)
                {
                    var clsParser = new ClsFileParser();
                    
                    foreach (var kvp in additionalClsFiles)
                    {
                        try
                        {
                            var additionalContent = clsParser.Generate(kvp.Value);
                            var additionalFilePath = Path.Combine(vehicleFolderPath, kvp.Key);
                            await File.WriteAllTextAsync(additionalFilePath, additionalContent, UTF8NoBOM);
                            filesCount++;
                        }
                        catch (Exception ex)
                        {
                            ErrorHelper.ShowSaveWarning($"additional CLS file '{kvp.Key}'", ex.Message);
                        }
                    }
                }
                
                MessageBox.Show($"Vehicle saved ({filesCount} files) to: {clsFilePath}", GlobalConstants.Messages.SaveComplete, 
                              MessageBoxButtons.OK, MessageBoxIcon.Information);
                return true;
            }
            return false;
        }

        public async Task<bool> SaveMultipleToFolderStructureAsync(Dictionary<string, Dictionary<string, object>> vehicleDataMap, Dictionary<string, Dictionary<string, Dictionary<string, object>>>? vehicleClsFilesMap = null)
        {
            using var folderDialog = new FolderBrowserDialog
            {
                Description = "Select destination folder for the vehicle structures",
                ShowNewFolderButton = true
            };

            if (folderDialog.ShowDialog() == DialogResult.OK)
            {
                var destinationPath = folderDialog.SelectedPath;
                var clsParser = new ClsFileParser();
                var savedCount = 0;
                var totalCount = vehicleDataMap.Count;
                var totalFilesCount = 0;
                
                foreach (var kvp in vehicleDataMap)
                {
                    var vehicleName = kvp.Key;
                    var vehicleData = kvp.Value;
                    var filesCount = 0;
                    
                    try
                    {
                        var clsContent = clsParser.Generate(vehicleData);
                        var vehicleFolderPath = Path.Combine(destinationPath, FileConstants.TrucksPath, $"{FileConstants.AutoPrefix}{vehicleName}");
                        
                        // Create the directory structure
                        Directory.CreateDirectory(vehicleFolderPath);
                        
                        // Save the main CLS file with UTF-8 without BOM
                        var clsFilePath = Path.Combine(vehicleFolderPath, $"{FileConstants.AutoPrefix}{vehicleName}.cls");
                        await File.WriteAllTextAsync(clsFilePath, clsContent, UTF8NoBOM);
                        filesCount++;
                        
                        // Save additional CLS files if any
                        if (vehicleClsFilesMap?.ContainsKey(vehicleName) == true)
                        {
                            var additionalFiles = vehicleClsFilesMap[vehicleName];
                            foreach (var clsFileKvp in additionalFiles)
                            {
                                try
                                {
                                    var additionalContent = clsParser.Generate(clsFileKvp.Value);
                                    var additionalFilePath = Path.Combine(vehicleFolderPath, clsFileKvp.Key);
                                    await File.WriteAllTextAsync(additionalFilePath, additionalContent, UTF8NoBOM);
                                    filesCount++;
                                }
                                catch (Exception ex)
                                {
                                    ErrorHelper.ShowSaveWarning($"additional CLS file '{clsFileKvp.Key}' for vehicle '{vehicleName}'", ex.Message);
                                }
                            }
                        }
                        
                        savedCount++;
                        totalFilesCount += filesCount;
                    }
                    catch (Exception ex)
                    {
                        ErrorHelper.ShowSaveError($"vehicle '{vehicleName}'", ex.Message);
                    }
                }
                
                MessageBox.Show($"Saved {savedCount} vehicles ({totalFilesCount} files total) to: {destinationPath}", 
                              "Save Complete", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return savedCount > 0;
            }
            return false;
        }

        private async Task<bool> SaveToPakFileAsync(string vehicleName, string clsContent, Dictionary<string, Dictionary<string, object>>? additionalClsFiles = null)
        {
            var roadCraftFolder = GlobalConfig.AppSettings.RoadCraftFolder;
            if (string.IsNullOrEmpty(roadCraftFolder) || !Directory.Exists(roadCraftFolder))
            {
                ErrorHelper.ShowConfigError("RoadCraft folder not configured or doesn't exist. Please configure it in settings.");
                return false;
            }

            var pakFilePath = Path.Combine(roadCraftFolder, FileConstants.PakPath);
            if (!File.Exists(pakFilePath))
            {
                ErrorHelper.ShowConfigError($"PAK file not found at: {pakFilePath}");
                return false;
            }

            return await Task.Run(() => SaveToPakFileInternal(pakFilePath, vehicleName, clsContent, additionalClsFiles));
        }

        public async Task<bool> SaveMultipleToPakFileAsync(Dictionary<string, Dictionary<string, object>> vehicleDataMap, Dictionary<string, Dictionary<string, Dictionary<string, object>>>? vehicleClsFilesMap = null)
        {
            var roadCraftFolder = GlobalConfig.AppSettings.RoadCraftFolder;
            if (string.IsNullOrEmpty(roadCraftFolder) || !Directory.Exists(roadCraftFolder))
            {
                ErrorHelper.ShowConfigError("RoadCraft folder not configured or doesn't exist. Please configure it in settings.");
                return false;
            }

            var pakFilePath = Path.Combine(roadCraftFolder, FileConstants.PakPath);
            if (!File.Exists(pakFilePath))
            {
                ErrorHelper.ShowConfigError($"PAK file not found at: {pakFilePath}");
                return false;
            }

            return await Task.Run(() => SaveMultipleToPakFileInternal(pakFilePath, vehicleDataMap, vehicleClsFilesMap));
        }

        private bool SaveToPakFileInternal(string pakFilePath, string vehicleName, string clsContent, Dictionary<string, Dictionary<string, object>>? additionalClsFiles = null)
        {
            string tempPakPath = null;
            try
            {
                // Create a backup of the original PAK file
                var backupPath = pakFilePath + ".backup";
                if (!File.Exists(backupPath))
                {
                    File.Copy(pakFilePath, backupPath, true);
                }

                tempPakPath = GetUniqueTemporaryFilePath();

                using (var originalArchive = ZipFile.OpenRead(pakFilePath))
                using (var newArchive = ZipFile.Open(tempPakPath, ZipArchiveMode.Create))
                {
                    var targetPath = $"{FileConstants.TrucksPath}/{FileConstants.AutoPrefix}{vehicleName}/{FileConstants.AutoPrefix}{vehicleName}.cls";
                    var updatedPaths = new HashSet<string> { targetPath };

                    // Copy all existing entries, replacing the target file if it exists
                    foreach (var entry in originalArchive.Entries)
                    {
                        if (entry.FullName == targetPath)
                        {
                            // Replace the existing entry with our new content using UTF-8 without BOM
                            var newEntry = newArchive.CreateEntry(targetPath);
                            using var newEntryStream = newEntry.Open();
                            using var writer = new StreamWriter(newEntryStream, UTF8NoBOM);
                            writer.Write(clsContent);
                        }
                        else
                        {
                            // Copy the existing entry
                            var newEntry = newArchive.CreateEntry(entry.FullName);
                            using var originalStream = entry.Open();
                            using var newEntryStream = newEntry.Open();
                            originalStream.CopyTo(newEntryStream);
                        }
                    }

                    // Add the new entry if it didn't exist in the original PAK using UTF-8 without BOM
                    if (!originalArchive.Entries.Any(e => e.FullName == targetPath))
                    {
                        var newEntry = newArchive.CreateEntry(targetPath);
                        using var newEntryStream = newEntry.Open();
                        using var writer = new StreamWriter(newEntryStream, UTF8NoBOM);
                        writer.Write(clsContent);
                    }

                    // Save additional CLS files if any
                    if (additionalClsFiles != null && additionalClsFiles.Count > 0)
                    {
                        var clsParser = new ClsFileParser();
                        
                        foreach (var kvp in additionalClsFiles)
                        {
                            try
                            {
                                var additionalContent = clsParser.Generate(kvp.Value);
                                var additionalTargetPath = $"{FileConstants.TrucksPath}/{FileConstants.AutoPrefix}{vehicleName}/{kvp.Key}";
                                
                                // Create new entry for additional CLS file
                                var newEntry = newArchive.CreateEntry(additionalTargetPath);
                                using var newEntryStream = newEntry.Open();
                                using var writer = new StreamWriter(newEntryStream, UTF8NoBOM);
                                writer.Write(additionalContent);
                            }
                            catch (Exception ex)
                            {
                                ErrorHelper.ShowSaveWarning($"additional CLS file '{kvp.Key}' for vehicle '{vehicleName}'", ex.Message);
                            }
                        }
                    }
                }

                // Replace the original PAK file with the new one
                File.Delete(pakFilePath);
                File.Move(tempPakPath, pakFilePath);

                return true;
            }
            catch (Exception ex)
            {
                // Clean up temporary file if it exists
                if (tempPakPath != null && File.Exists(tempPakPath))
                {
                    try
                    {
                        File.Delete(tempPakPath);
                    }
                    catch
                    {
                        // Ignore cleanup errors
                    }
                }
                
                ErrorHelper.ShowSaveError($"PAK file for vehicle '{vehicleName}'", ex.Message);
                return false;
            }
        }

        private bool SaveMultipleToPakFileInternal(string pakFilePath, Dictionary<string, Dictionary<string, object>> vehicleDataMap, Dictionary<string, Dictionary<string, Dictionary<string, object>>>? vehicleClsFilesMap = null)
        {
            string tempPakPath = null;
            try
            {
                // Create a backup of the original PAK file
                var backupPath = pakFilePath + ".backup";
                if (!File.Exists(backupPath))
                {
                    File.Copy(pakFilePath, backupPath);
                }

                tempPakPath = GetUniqueTemporaryFilePath();
                var clsParser = new ClsFileParser();
                var vehicleContents = new Dictionary<string, string>();
                
                // Generate CLS content for all main vehicle files
                foreach (var kvp in vehicleDataMap)
                {
                    var vehicleName = kvp.Key;
                    var vehicleData = kvp.Value;
                    
                    try
                    {
                        var clsContent = clsParser.Generate(vehicleData);
                        var targetPath = $"{FileConstants.TrucksPath}/{FileConstants.AutoPrefix}{vehicleName}/{FileConstants.AutoPrefix}{vehicleName}.cls";
                        vehicleContents[targetPath] = clsContent;
                    }
                    catch (Exception ex)
                    {
                        ErrorHelper.ShowSaveWarning($"CLS content generation for vehicle '{vehicleName}'", ex.Message);
                    }
                }
                
                // Generate CLS content for all additional files
                if (vehicleClsFilesMap != null)
                {
                    foreach (var vehicleKvp in vehicleClsFilesMap)
                    {
                        var vehicleName = vehicleKvp.Key;
                        var clsFiles = vehicleKvp.Value;
                        
                        foreach (var clsFileKvp in clsFiles)
                        {
                            var clsFileName = clsFileKvp.Key;
                            var clsFileData = clsFileKvp.Value;
                            
                            try
                            {
                                var clsContent = clsParser.Generate(clsFileData);
                                var targetPath = $"{FileConstants.TrucksPath}/{FileConstants.AutoPrefix}{vehicleName}/{clsFileName}";
                                vehicleContents[targetPath] = clsContent;
                            }
                            catch (Exception ex)
                            {
                                ErrorHelper.ShowSaveWarning($"CLS content generation for file '{clsFileName}' in vehicle '{vehicleName}'", ex.Message);
                            }
                        }
                    }
                }
                
                using (var originalArchive = ZipFile.OpenRead(pakFilePath))
                using (var newArchive = ZipFile.Open(tempPakPath, ZipArchiveMode.Create))
                {
                    var updatedPaths = new HashSet<string>();

                    // Copy all existing entries, replacing target files if they exist
                    foreach (var entry in originalArchive.Entries)
                    {
                        if (vehicleContents.ContainsKey(entry.FullName))
                        {
                            // Replace the existing entry with our new content using UTF-8 without BOM
                            var newEntry = newArchive.CreateEntry(entry.FullName);
                            using var newEntryStream = newEntry.Open();
                            using var writer = new StreamWriter(newEntryStream, UTF8NoBOM);
                            writer.Write(vehicleContents[entry.FullName]);
                            updatedPaths.Add(entry.FullName);
                        }
                        else
                        {
                            // Copy the existing entry
                            var newEntry = newArchive.CreateEntry(entry.FullName);
                            using var originalStream = entry.Open();
                            using var newEntryStream = newEntry.Open();
                            originalStream.CopyTo(newEntryStream);
                        }
                    }

                    // Add any new entries that didn't exist in the original PAK using UTF-8 without BOM
                    foreach (var kvp in vehicleContents)
                    {
                        if (!updatedPaths.Contains(kvp.Key))
                        {
                            var newEntry = newArchive.CreateEntry(kvp.Key);
                            using var newEntryStream = newEntry.Open();
                            using var writer = new StreamWriter(newEntryStream, UTF8NoBOM);
                            writer.Write(kvp.Value);
                        }
                    }

                    // Save additional CLS files if any
                    if (vehicleClsFilesMap != null && vehicleClsFilesMap.Count > 0)
                    {
                        foreach (var kvp in vehicleClsFilesMap)
                        {
                            var vehicleName = kvp.Key;
                            
                            foreach (var clsFileKvp in kvp.Value)
                            {
                                try
                                {
                                    var additionalContent = clsParser.Generate(clsFileKvp.Value);
                                    var additionalTargetPath = $"ssl/autogen_designer_wizard/trucks/auto_{vehicleName}/{clsFileKvp.Key}";
                                    
                                    // Create new entry for additional CLS file
                                    var newEntry = newArchive.CreateEntry(additionalTargetPath);
                                    using var newEntryStream = newEntry.Open();
                                    using var writer = new StreamWriter(newEntryStream, UTF8NoBOM);
                                    writer.Write(additionalContent);
                                }
                                catch (Exception ex)
                                {
                                    MessageBox.Show($"Error saving additional CLS file '{clsFileKvp.Key}' for vehicle '{vehicleName}': {ex.Message}", 
                                                  "Save Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                                }
                            }
                        }
                    }
                }

                // Replace the original PAK file with the new one
                File.Delete(pakFilePath);
                File.Move(tempPakPath, pakFilePath);

                return true;
            }
            catch (Exception ex)
            {
                // Clean up temporary file if it exists
                if (tempPakPath != null && File.Exists(tempPakPath))
                {
                    try
                    {
                        File.Delete(tempPakPath);
                    }
                    catch
                    {
                        // Ignore cleanup errors
                    }
                }
                
                ErrorHelper.ShowSaveError("multiple vehicles to PAK file", ex.Message);
                return false;
            }
        }

        /// <summary>
        /// Creates a unique temporary file path with retry logic to avoid "file already exists" errors
        /// </summary>
        /// <returns>A unique temporary file path</returns>
        private string GetUniqueTemporaryFilePath()
        {
            const int maxRetries = 10;
            
            for (int i = 0; i < maxRetries; i++)
            {
                try
                {
                    // Generate a unique file name using GUID to avoid conflicts
                    var tempDir = Path.GetTempPath();
                    var fileName = $"RoadCraftVehicleEditor_{Guid.NewGuid():N}.tmp";
                    var tempPath = Path.Combine(tempDir, fileName);
                    
                    // Ensure the file doesn't exist
                    if (!File.Exists(tempPath))
                    {
                        return tempPath;
                    }
                }
                catch (Exception ex)
                {
                    // If this is the last retry, throw the exception
                    if (i == maxRetries - 1)
                    {
                        throw new InvalidOperationException($"Failed to create temporary file after {maxRetries} attempts", ex);
                    }
                    
                    // Wait a bit before retrying
                    System.Threading.Thread.Sleep(100);
                }
            }
            
            throw new InvalidOperationException($"Failed to create temporary file after {maxRetries} attempts");
        }
    }
}