using System;
using System.Collections.Generic;
using System.IO;
using System.IO.Compression;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Globalization;

namespace RoadCraft_Vehicle_Editor_v2___new_edition
{
    public class FileLoadService
    {
        private List<VehicleInfo> _cachedVehicles = new List<VehicleInfo>();
        private readonly object _cacheLock = new object();

        #region Vehicle Info Classes

        public class VehicleInfo
        {
            public string Name { get; set; } = string.Empty;
            public string FolderName { get; set; } = string.Empty;
            public string ClsFileName { get; set; } = string.Empty;
            public string FullPath { get; set; } = string.Empty;
            public string PrettyName { get; set; } = string.Empty;
            public string Category { get; set; } = string.Empty;
            
            public override string ToString()
            {
                return PrettyName;
            }
        }

        /// <summary>
        /// Represents a category header item in the ListBox
        /// </summary>
        public class CategoryHeaderItem
        {
            public string Category { get; }
            public int VehicleCount { get; }
            
            public CategoryHeaderItem(string category, int vehicleCount)
            {
                Category = category;
                VehicleCount = vehicleCount;
            }
            
            public override string ToString() => $"── {Category} ({VehicleCount}) ──";
        }

        /// <summary>
        /// Represents a vehicle item that can be displayed with modification status
        /// </summary>
        public class VehicleListItem
        {
            public VehicleInfo VehicleInfo { get; }
            public bool IsModified { get; set; }
            
            public VehicleListItem(VehicleInfo vehicleInfo, bool isModified = false)
            {
                VehicleInfo = vehicleInfo;
                IsModified = isModified;
            }
            
            public override string ToString()
            {
                return IsModified ? $"  {VehicleInfo.PrettyName} *" : $"  {VehicleInfo.PrettyName}";
            }
        }

        #endregion

        #region Vehicle Categorization

        /// <summary>
        /// Optimized vehicle categorization based on filename patterns
        /// </summary>
        /// <param name="fileName">The vehicle filename</param>
        /// <returns>Category name</returns>
        public static string CategorizeVehicle(string fileName)
        {
            var name = fileName.ToLowerInvariant();
            
            var categoryRules = new List<(string[] Keywords, string Category)>
            {
                (new[] { "nota_allegro_cargo_new", "nota_allegro_personnel_new", "civilian", "4317dl_cargo_old",
                    "voron_3327_dumptruck", "st7050_trailer", "semitrailer", "greenway_ht500_dozer",
                    "karelian_scout_dozer", "72malamute_scout_trailer", "n_and_s",
                    "neo_crane", "2006_harvester", "neo_forwarder" },
                    "Other"),
                
                (new[] { "dozer", "bulldozer" }, "Dozers"),
                (new[] { "cargo", "transporter", "119lynx_scout_trailer" }, "Cargo"),

                (new[] { "crane", "mobile_crane" }, "Cranes"),
                (new[] { "roller", "road_roller" }, "Rollers"),
                (new[] { "paver", "asphalt_paver" }, "Pavers"),
                
                (new[] { "scout", "recon" }, "Scouts"),
                (new[] { "dumptruck" }, "Dump Trucks"),
                (new[] { "harvester", "mulcher", "wood", "forwarder" }, "Forestry"),
                (new[] { "cable_layer", "mobile_scalper", "mob" }, "Special Equipment"),   
                (new[] { "pike_jollier", "nota_allegro_slim", "mule_t1_vagrant" }, "SAR"),   
            };

            foreach (var (keywords, category) in categoryRules)
            {
                if (keywords.Any(keyword => name.Contains(keyword)))
                {
                    return category;
                }
            }
            
            return "Other";
        }

        #endregion

        #region Name Prettification

        /// <summary>
        /// Optimized vehicle name prettification
        /// </summary>
        /// <param name="fileName">The raw vehicle filename</param>
        /// <returns>Prettified display name</returns>
        public static string PrettifyVehicleName(string fileName)
        {
            var name = fileName;
            
            // Remove common prefixes
            if (name.StartsWith(FileConstants.AutoPrefix, StringComparison.OrdinalIgnoreCase))
                name = name[FileConstants.AutoPrefix.Length..];
            
            var replacements = new Dictionary<string, string>
            {
                { "old", "Rusty" },
                { "res", "Restored" },
                { "new", "" },
            };
            
            // Apply replacements
            foreach (var (oldText, newText) in replacements)
            {
                name = name.Replace(oldText, newText, StringComparison.OrdinalIgnoreCase);
            }
            
            // Replace underscores with spaces
            name = name.Replace("_", " ");
            
            // Remove extra spaces
            name = System.Text.RegularExpressions.Regex.Replace(name, @"\s+", " ");
            
            // Trim and convert to title case
            name = name.Trim();
            if (!string.IsNullOrEmpty(name))
            {
                name = CultureInfo.CurrentCulture.TextInfo.ToTitleCase(name.ToLower());
            }
            
            return name;
        }

        #endregion

        #region Vehicle Loading

        public async Task<List<VehicleInfo>> LoadVehiclesAsync()
        {
            var vehicles = new List<VehicleInfo>();
            
            try
            {
                if (!VehicleUtils.ValidateRoadCraftEnvironment(out string pakFilePath))
                {
                    throw new InvalidOperationException("RoadCraft folder not set or PAK file doesn't exist");
                }

                vehicles = await Task.Run(() => LoadVehiclesFromPak(pakFilePath));
                
                lock (_cacheLock)
                {
                    _cachedVehicles = vehicles;
                }
            }
            catch (Exception ex)
            {
                throw new Exception($"Error loading vehicles: {ex.Message}", ex);
            }

            return vehicles;
        }

        private List<VehicleInfo> LoadVehiclesFromPak(string pakFilePath)
        {
            var vehicles = new List<VehicleInfo>();

            try
            {
                using (var archive = ZipFile.OpenRead(pakFilePath))
                {
                    var trucksEntries = archive.Entries
                        .Where(entry => entry.FullName.StartsWith(FileConstants.TrucksPath, StringComparison.OrdinalIgnoreCase))
                        .ToList();

                    if (!trucksEntries.Any())
                    {
                        throw new DirectoryNotFoundException($"Trucks directory not found in PAK file. Looking for: {FileConstants.TrucksPath}");
                    }

                    var autoFolders = archive.Entries
                        .Where(entry => entry.FullName.StartsWith(FileConstants.TrucksPath + "/", StringComparison.OrdinalIgnoreCase))
                        .Where(entry => entry.FullName.Contains($"/{FileConstants.AutoPrefix}"))
                        .FilterNonBasePreview()
                        .Select(entry => entry.FullName)
                        .ToList();

                    // Group by folder to find unique auto_ folders
                    var uniqueFolders = new HashSet<string>();
                    foreach (var path in autoFolders)
                    {
                        var parts = path.Split('/');
                        for (int i = 0; i < parts.Length; i++)
                        {
                            if (parts[i].StartsWith(FileConstants.AutoPrefix, StringComparison.OrdinalIgnoreCase))
                            {
                                var folderPath = string.Join("/", parts, 0, i + 1);
                                
                                if (!folderPath.Contains(FileConstants.BaseFolder, StringComparison.OrdinalIgnoreCase) &&
                                    !folderPath.Contains(FileConstants.PreviewFolder, StringComparison.OrdinalIgnoreCase))
                                {
                                    uniqueFolders.Add(folderPath);
                                }
                                break;
                            }
                        }
                    }

                    // For each auto_ folder, look for matching .cls file
                    foreach (var autoFolder in uniqueFolders)
                    {
                        var folderName = Path.GetFileName(autoFolder);
                        var expectedClsFileName = folderName + ".cls";
                        
                        // Look for the .cls file in this folder
                        var clsEntry = archive.Entries.FirstOrDefault(entry => 
                            entry.FullName.StartsWith(autoFolder + "/", StringComparison.OrdinalIgnoreCase) &&
                            entry.Name.Equals(expectedClsFileName, StringComparison.OrdinalIgnoreCase));

                        if (clsEntry != null)
                        {
                            // Clean up the name for display
                            var displayName = folderName.StartsWith(FileConstants.AutoPrefix) 
                                ? folderName[FileConstants.AutoPrefix.Length..] 
                                : folderName;
                            
                            // Apply categorization and prettification
                            var category = CategorizeVehicle(displayName);
                            var prettyName = PrettifyVehicleName(displayName);
                            
                            vehicles.Add(new VehicleInfo
                            {
                                Name = displayName,
                                FolderName = folderName,
                                ClsFileName = expectedClsFileName,
                                FullPath = clsEntry.FullName,
                                PrettyName = prettyName,
                                Category = category
                            });
                        }
                    }

                    if (!vehicles.Any())
                    {
                        var allAutoFolders = string.Join(", ", uniqueFolders.Take(5));
                        throw new Exception($"No vehicles found. Found {uniqueFolders.Count} auto_ folders but no matching .cls files. Sample folders: {allAutoFolders}");
                    }
                }
            }
            catch (UnauthorizedAccessException ex)
            {
                throw new Exception($"Access denied when reading PAK file: {ex.Message}", ex);
            }
            catch (Exception ex)
            {
                throw new Exception($"Error reading PAK file: {ex.Message}", ex);
            }

            return VehicleUtils.SortWithOtherLast(vehicles, v => v.Category)
                              .ThenBy(v => v.PrettyName)
                              .ToList();
        }

        #endregion

        #region ListBox Population

        /// <summary>
        /// Populates the ListBox with categorized vehicles
        /// </summary>
        /// <param name="vehicleListBox">The ListBox to populate</param>
        /// <param name="showCategories">Whether to show category headers</param>
        public async Task PopulateVehicleListAsync(ListBox vehicleListBox, bool showCategories = true)
        {
            try
            {
                vehicleListBox.Items.Clear();
                vehicleListBox.Items.Add("Loading vehicles...");
                vehicleListBox.Enabled = false;
                vehicleListBox.Refresh();

                var vehicles = await LoadVehiclesAsync();
                
                vehicleListBox.Items.Clear();
                
                if (vehicles.Any())
                {
                    if (showCategories)
                    {
                        var categorizedVehicles = VehicleUtils.SortGroupsWithOtherLast(
                            vehicles.GroupBy(v => v.Category));
                        
                        foreach (var categoryGroup in categorizedVehicles)
                        {
                            // Add category header
                            var categoryHeader = new CategoryHeaderItem(categoryGroup.Key, categoryGroup.Count());
                            vehicleListBox.Items.Add(categoryHeader);
                            
                            // Add vehicles in this category
                            foreach (var vehicle in categoryGroup.OrderBy(v => v.PrettyName))
                            {
                                var vehicleItem = new VehicleListItem(vehicle);
                                vehicleListBox.Items.Add(vehicleItem);
                            }
                        }
                    }
                    else
                    {
                        // Add vehicles without categories
                        foreach (var vehicle in vehicles)
                        {
                            var vehicleItem = new VehicleListItem(vehicle);
                            vehicleListBox.Items.Add(vehicleItem);
                        }
                    }
                    
                    vehicleListBox.Enabled = true;
                }
                else
                {
                    vehicleListBox.Items.Add("No vehicles found");
                    vehicleListBox.Enabled = false;
                }
            }
            catch (Exception ex)
            {
                vehicleListBox.Items.Clear();
                vehicleListBox.Items.Add($"Error: {ex.Message}");
                vehicleListBox.Enabled = false;
            }
        }

        /// <summary>
        /// Updates the modification status of a vehicle in the ListBox
        /// </summary>
        /// <param name="vehicleListBox">The ListBox containing the vehicle</param>
        /// <param name="vehicleName">The name of the vehicle to update</param>
        /// <param name="isModified">Whether the vehicle is modified</param>
        public void UpdateVehicleModificationStatus(ListBox vehicleListBox, string vehicleName, bool isModified)
        {
            for (int i = 0; i < vehicleListBox.Items.Count; i++)
            {
                if (vehicleListBox.Items[i] is VehicleListItem vehicleItem)
                {
                    if (vehicleItem.VehicleInfo.Name == vehicleName)
                    {
                        vehicleItem.IsModified = isModified;
                        
                        vehicleListBox.Invalidate(vehicleListBox.GetItemRectangle(i));
                        break;
                    }
                }
            }
        }

        #endregion

        #region Existing Methods

        public VehicleInfo? GetVehicleInfo(string displayName)
        {
            lock (_cacheLock)
            {
                return _cachedVehicles.FirstOrDefault(v => v.Name == displayName);
            }
        }

        public async Task<byte[]?> GetClsFileContentAsync(string vehicleName)
        {
            try
            {
                if (!VehicleUtils.ValidateRoadCraftEnvironment(out string pakFilePath))
                {
                    return null;
                }

                // Try to find the vehicle in cached data first
                VehicleInfo? vehicleInfo;
                lock (_cacheLock)
                {
                    vehicleInfo = _cachedVehicles.FirstOrDefault(v => v.Name == vehicleName);
                }

                if (vehicleInfo != null)
                {
                    return await Task.Run(() => 
                    {
                        using (var archive = ZipFile.OpenRead(pakFilePath))
                        {
                            var clsEntry = archive.Entries.FirstOrDefault(entry => 
                                entry.FullName.Equals(vehicleInfo.FullPath, StringComparison.OrdinalIgnoreCase));

                            if (clsEntry != null)
                            {
                                using (var stream = clsEntry.Open())
                                using (var memoryStream = new MemoryStream())
                                {
                                    stream.CopyTo(memoryStream);
                                    return memoryStream.ToArray();
                                }
                            }
                        }
                        return null;
                    });
                }

                return await Task.Run(() => 
                {
                    using (var archive = ZipFile.OpenRead(pakFilePath))
                    {
                        var clsFileName = FileConstants.AutoPrefix + vehicleName + ".cls";
                        var clsEntry = archive.Entries
                            .Where(entry => entry.FullName.Contains($"/{FileConstants.AutoPrefix}{vehicleName}/") &&
                                          entry.Name.Equals(clsFileName, StringComparison.OrdinalIgnoreCase))
                            .FilterNonBasePreview()
                            .FirstOrDefault();

                        if (clsEntry != null)
                        {
                            using (var stream = clsEntry.Open())
                            using (var memoryStream = new MemoryStream())
                            {
                                stream.CopyTo(memoryStream);
                                return memoryStream.ToArray();
                            }
                        }
                    }
                    return null;
                });
            }
            catch
            {
                return null;
            }
        }

        public int GetVehicleCount()
        {
            lock (_cacheLock)
            {
                return _cachedVehicles.Count;
            }
        }

        public List<VehicleInfo> GetAllVehicles()
        {
            lock (_cacheLock)
            {
                return _cachedVehicles.ToList();
            }
        }

        /// <summary>
        /// Gets all vehicles grouped by category with custom sorting (Other category last)
        /// </summary>
        /// <returns>Dictionary with category name as key and list of vehicles as value, ordered with "Other" last</returns>
        public Dictionary<string, List<VehicleInfo>> GetVehiclesByCategory()
        {
            lock (_cacheLock)
            {
                return VehicleUtils.SortGroupsWithOtherLast(_cachedVehicles.GroupBy(v => v.Category))
                                   .ToDictionary(g => g.Key, g => g.OrderBy(v => v.PrettyName).ToList());
            }
        }

        /// <summary>
        /// Gets all CLS files in a vehicle folder (excluding the main CLS file)
        /// </summary>
        /// <param name="vehicleName">Name of the vehicle</param>
        /// <returns>Dictionary with filename as key and (filename, content) tuple as value</returns>
        public async Task<Dictionary<string, (string fileName, byte[] content)>> GetAllClsFilesInVehicleFolderAsync(string vehicleName)
        {
            var result = new Dictionary<string, (string fileName, byte[] content)>();
            
            try
            {
                if (!VehicleUtils.ValidateRoadCraftEnvironment(out string pakFilePath))
                {
                    return result;
                }

                // Find the vehicle folder
                VehicleInfo? vehicleInfo;
                lock (_cacheLock)
                {
                    vehicleInfo = _cachedVehicles.FirstOrDefault(v => v.Name == vehicleName);
                }

                if (vehicleInfo == null)
                {
                    System.Diagnostics.Debug.WriteLine($"Vehicle '{vehicleName}' not found in cached vehicles");
                    return result;
                }

                var vehicleFolderPath = Path.GetDirectoryName(vehicleInfo.FullPath)?.Replace('\\', '/');
                if (string.IsNullOrEmpty(vehicleFolderPath))
                {
                    System.Diagnostics.Debug.WriteLine($"Could not get folder path from vehicle FullPath: {vehicleInfo.FullPath}");
                    return result;
                }

                System.Diagnostics.Debug.WriteLine($"Searching for additional CLS files for vehicle '{vehicleName}'");
                System.Diagnostics.Debug.WriteLine($"Main CLS file path: {vehicleInfo.FullPath}");
                System.Diagnostics.Debug.WriteLine($"Vehicle folder path: {vehicleFolderPath}");
                System.Diagnostics.Debug.WriteLine($"Main CLS file name: {vehicleInfo.ClsFileName}");

                return await Task.Run(() => 
                {
                    using (var archive = ZipFile.OpenRead(pakFilePath))
                    {
                        var allFilesInFolder = archive.Entries
                            .Where(entry => entry.FullName.StartsWith(vehicleFolderPath + "/", StringComparison.OrdinalIgnoreCase))
                            .ToList();

                        System.Diagnostics.Debug.WriteLine($"Total files in vehicle folder: {allFilesInFolder.Count}");
                        foreach (var file in allFilesInFolder)
                        {
                            System.Diagnostics.Debug.WriteLine($"  File: {file.FullName}");
                        }

                        // Find all CLS files in the vehicle folder, excluding the main one
                        var clsEntries = allFilesInFolder
                            .Where(entry => entry.Name.EndsWith(".cls", StringComparison.OrdinalIgnoreCase))
                            .Where(entry => !entry.Name.Equals(vehicleInfo.ClsFileName, StringComparison.OrdinalIgnoreCase))
                            .ToList();

                        System.Diagnostics.Debug.WriteLine($"Additional CLS files found: {clsEntries.Count}");
                        foreach (var clsEntry in clsEntries)
                        {
                            System.Diagnostics.Debug.WriteLine($"  CLS File: {clsEntry.FullName}");
                        }

                        foreach (var clsEntry in clsEntries)
                        {
                            try
                            {
                                using (var stream = clsEntry.Open())
                                using (var memoryStream = new MemoryStream())
                                {
                                    stream.CopyTo(memoryStream);
                                    var content = memoryStream.ToArray();
                                    result[clsEntry.Name] = (clsEntry.Name, content);
                                    System.Diagnostics.Debug.WriteLine($"Successfully loaded CLS file: {clsEntry.Name} ({content.Length} bytes)");
                                }
                            }
                            catch (Exception ex)
                            {
                                System.Diagnostics.Debug.WriteLine($"Error reading CLS file {clsEntry.Name}: {ex.Message}");
                            }
                        }
                    }
                    
                    System.Diagnostics.Debug.WriteLine($"Returning {result.Count} additional CLS files for vehicle '{vehicleName}'");
                    return result;
                });
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error getting CLS files for vehicle {vehicleName}: {ex.Message}");
                return result;
            }
        }

        /// <summary>
        /// Debug method to examine the structure of a specific vehicle folder
        /// </summary>
        /// <param name="vehicleName">Name of the vehicle to examine</param>
        /// <returns>List of all files in the vehicle folder</returns>
        public async Task<List<string>> DebugGetVehicleFolderContentsAsync(string vehicleName)
        {
            var result = new List<string>();
            
            try
            {
                if (!VehicleUtils.ValidateRoadCraftEnvironment(out string pakFilePath))
                {
                    result.Add("Error: RoadCraft folder not set or PAK file doesn't exist");
                    return result;
                }

                // Find the vehicle folder
                VehicleInfo? vehicleInfo;
                lock (_cacheLock)
                {
                    vehicleInfo = _cachedVehicles.FirstOrDefault(v => v.Name == vehicleName);
                }

                if (vehicleInfo == null)
                {
                    result.Add($"Error: Vehicle '{vehicleName}' not found in cached vehicles");
                    return result;
                }

                var vehicleFolderPath = Path.GetDirectoryName(vehicleInfo.FullPath)?.Replace('\\', '/');
                if (string.IsNullOrEmpty(vehicleFolderPath))
                {
                    result.Add($"Error: Could not get folder path from vehicle FullPath: {vehicleInfo.FullPath}");
                    return result;
                }

                result.Add($"Vehicle: {vehicleName}");
                result.Add($"Main CLS file: {vehicleInfo.FullPath}");
                result.Add($"Vehicle folder: {vehicleFolderPath}");
                result.Add($"Main CLS filename: {vehicleInfo.ClsFileName}");
                result.Add("");
                result.Add("All files in vehicle folder:");

                await Task.Run(() => 
                {
                    using (var archive = ZipFile.OpenRead(pakFilePath))
                    {
                        var allFilesInFolder = archive.Entries
                            .Where(entry => entry.FullName.StartsWith(vehicleFolderPath + "/", StringComparison.OrdinalIgnoreCase))
                            .OrderBy(entry => entry.FullName)
                            .ToList();

                        if (allFilesInFolder.Count == 0)
                        {
                            result.Add("  No files found in vehicle folder");
                        }
                        else
                        {
                            foreach (var file in allFilesInFolder)
                            {
                                var fileType = file.Name.EndsWith(".cls", StringComparison.OrdinalIgnoreCase) ? "[CLS]" : "";
                                var isMainFile = file.Name.Equals(vehicleInfo.ClsFileName, StringComparison.OrdinalIgnoreCase) ? "[MAIN]" : "";
                                result.Add($"  {file.FullName} {fileType} {isMainFile}");
                            }
                        }

                        result.Add("");
                        result.Add("CLS files (excluding main):");
                        
                        var additionalClsFiles = allFilesInFolder
                            .Where(entry => entry.Name.EndsWith(".cls", StringComparison.OrdinalIgnoreCase))
                            .Where(entry => !entry.Name.Equals(vehicleInfo.ClsFileName, StringComparison.OrdinalIgnoreCase))
                            .ToList();

                        if (additionalClsFiles.Count == 0)
                        {
                            result.Add("  No additional CLS files found");
                        }
                        else
                        {
                            foreach (var clsFile in additionalClsFiles)
                            {
                                result.Add($"  {clsFile.FullName}");
                            }
                        }
                    }
                });
            }
            catch (Exception ex)
            {
                result.Add($"Error: {ex.Message}");
            }
            
            return result;
        }

        #endregion
    }
}
