using System.Text;
using System.Text.Json;
using ClsParser.Library;

namespace RoadCraft_Vehicle_Editor_v2___new_edition
{
    public class VehicleProperty
    {
        public string Path { get; set; } = string.Empty;
        public string[]? MultiPath { get; set; } // Optional array of additional paths to update along with the main Path
        public string Category { get; set; } = string.Empty;
        public string? ShowIf { get; set; } // Optional filter to show property only if vehicle name contains this string
        public string[]? Options { get; set; } // Optional dropdown options for string properties
        public string DisplayName { get; set; } = string.Empty;
        public string? Description { get; set; }
        public double? MinValue { get; set; } // For numeric properties
        public double? MaxValue { get; set; } // For numeric properties
        public double? Step { get; set; } // For numeric properties
        
        public string? Filter { get; set; } // Filter expression for array elements (e.g., "{constraintName = dump}")
        public string? TargetProperty { get; set; } // Specific property to access within the filtered object (e.g., "angularSpeed")
        
        public string? TableGroup { get; set; } // Group name for table layout - properties with same TableGroup will be displayed side by side
        
        // Type is now determined dynamically from the actual data
        public PropertyType GetPropertyType(object? value)
        {
            if (value == null)
                return PropertyType.String;
                
            return value switch
            {
                bool => PropertyType.Boolean,
                int => PropertyType.Integer,
                long => PropertyType.Integer,
                short => PropertyType.Integer,
                byte => PropertyType.Integer,
                double => PropertyType.Double,
                float => PropertyType.Double,
                decimal => PropertyType.Double,
                string => PropertyType.String,
                _ => PropertyType.String
            };
        }

        /// <summary>
        /// Gets all paths that should be updated when this property changes (including main Path and MultiPath)
        /// </summary>
        /// <returns>Array of all paths to update</returns>
        public string[] GetAllPaths()
        {
            var paths = new List<string> { Path };
            
            if (MultiPath != null)
            {
                paths.AddRange(MultiPath);
            }
            
            return paths.ToArray();
        }
        
        /// <summary>
        /// Checks if this property uses array filtering (contains [*] wildcard with Filter)
        /// </summary>
        /// <returns>True if this property uses array filtering</returns>
        public bool UsesArrayFiltering()
        {
            return Path.Contains("[*]") && !string.IsNullOrEmpty(Filter);
        }
        
        /// <summary>
        /// Checks if this property uses array expansion (contains [*] wildcard without Filter)
        /// </summary>
        /// <returns>True if this property uses array expansion</returns>
        public bool UsesArrayExpansion()
        {
            return Path.Contains("[*]") && string.IsNullOrEmpty(Filter);
        }
        
        /// <summary>
        /// Checks if this property should be displayed in a table layout
        /// </summary>
        /// <returns>True if this property has a TableGroup specified</returns>
        public bool UsesTableLayout()
        {
            return !string.IsNullOrEmpty(TableGroup);
        }
        
        /// <summary>
        /// Gets the base path for array expansion (everything before [*])
        /// </summary>
        /// <returns>The base path or the original path if no array expansion</returns>
        public string GetBasePath()
        {
            if (UsesArrayExpansion())
            {
                return Path.Substring(0, Path.IndexOf("[*]"));
            }
            return Path;
        }
        
        /// <summary>
        /// Expands this property into multiple properties for all array elements
        /// </summary>
        /// <param name="vehicleData">The vehicle data to analyze</param>
        /// <returns>List of expanded properties, one for each array element</returns>
        public List<VehicleProperty> ExpandArrayProperty(Dictionary<string, object> vehicleData)
        {
            var expandedProperties = new List<VehicleProperty>();
            
            if (!UsesArrayExpansion())
            {
                if (Properties.EnableVerboseDebug)
                {
                    System.Diagnostics.Debug.WriteLine($"=== Property '{DisplayName}' does not use array expansion ===");
                }
                return expandedProperties;
            }
                
            try
            {
                if (Properties.EnableVerboseDebug)
                {
                    System.Diagnostics.Debug.WriteLine($"=== ExpandArrayProperty for '{DisplayName}' ===");
                    System.Diagnostics.Debug.WriteLine($"=== Path: {Path} ===");
                }
                
                // Get the array path (extract everything before [*])
                var arrayPath = Path.Substring(0, Path.IndexOf("[*]"));
                
                if (Properties.EnableVerboseDebug)
                {
                    System.Diagnostics.Debug.WriteLine($"=== Array path: {arrayPath} ===");
                }
                
                // Create a temporary parser to query the array
                var tempParser = new ClsFileParser();
                var clsString = tempParser.Generate(vehicleData);
                
                if (string.IsNullOrWhiteSpace(clsString))
                {
                    if (Properties.EnableVerboseDebug)
                    {
                        System.Diagnostics.Debug.WriteLine($"=== Generated CLS string is empty ===");
                    }
                    return expandedProperties;
                }
                
                tempParser.Parse(clsString);
                
                // Get the array from the data
                var arrayResult = tempParser.Query(arrayPath);
                
                if (Properties.EnableVerboseDebug)
                {
                    System.Diagnostics.Debug.WriteLine($"=== Array query result: {arrayResult?.GetType().Name ?? "null"} ===");
                    if (arrayResult != null)
                    {
                        System.Diagnostics.Debug.WriteLine($"=== Array result value: {arrayResult} ===");
                    }
                }
                
                if (arrayResult is not List<object> array)
                {
                    if (Properties.EnableVerboseDebug)
                    {
                        System.Diagnostics.Debug.WriteLine($"=== Array result is not a List<object>, it's: {arrayResult?.GetType().Name ?? "null"} ===");
                    }
                    return expandedProperties;
                }
                
                if (Properties.EnableVerboseDebug)
                {
                    System.Diagnostics.Debug.WriteLine($"=== Array found with {array.Count} elements ===");
                }
                
                // Create a property for each array element
                for (int i = 0; i < array.Count; i++)
                {
                    var expandedPath = Path.Replace("[*]", $"[{i}]");
                    
                    if (Properties.EnableVerboseDebug)
                    {
                        System.Diagnostics.Debug.WriteLine($"=== Creating expanded property {i}: {expandedPath} ===");
                    }
                    
                    var expandedProperty = new VehicleProperty
                    {
                        Path = expandedPath,
                        MultiPath = MultiPath?.Select(mp => mp.Replace("[*]", $"[{i}]")).ToArray(),
                        Category = Category,
                        ShowIf = ShowIf,
                        Options = Options,
                        DisplayName = ExpandDisplayName(i),
                        Description = ExpandDescription(i),
                        MinValue = MinValue,
                        MaxValue = MaxValue,
                        Step = Step,
                        Filter = null,
                        TargetProperty = TargetProperty,
                        TableGroup = TableGroup
                    };
                    
                    if (Properties.EnableVerboseDebug)
                    {
                        System.Diagnostics.Debug.WriteLine($"=== Expanded property DisplayName: {expandedProperty.DisplayName} ===");
                    }
                    
                    expandedProperties.Add(expandedProperty);
                }
                
                if (Properties.EnableVerboseDebug)
                {
                    System.Diagnostics.Debug.WriteLine($"=== Created {expandedProperties.Count} expanded properties ===");
                }
                
                return expandedProperties;
            }
            catch (Exception ex)
            {
                if (Properties.EnableVerboseDebug)
                {
                    System.Diagnostics.Debug.WriteLine($"=== EXCEPTION in ExpandArrayProperty ===");
                    System.Diagnostics.Debug.WriteLine($"Property: {DisplayName}");
                    System.Diagnostics.Debug.WriteLine($"Path: {Path}");
                    System.Diagnostics.Debug.WriteLine($"Exception: {ex.GetType().Name}: {ex.Message}");
                    System.Diagnostics.Debug.WriteLine($"Stack Trace: {ex.StackTrace}");
                }
                return expandedProperties;
            }
        }
        
        /// <summary>
        /// Expands the DisplayName with array index placeholders
        /// </summary>
        /// <param name="index">The array index (0-based)</param>
        /// <returns>The expanded display name</returns>
        private string ExpandDisplayName(int index)
        {
            var displayName = DisplayName;
            
            // Replace {i} with 0-based index
            displayName = displayName.Replace("{i}", index.ToString());
            
            // Replace {i+1} with 1-based index
            displayName = displayName.Replace("{i+1}", (index + 1).ToString());
            
            return displayName;
        }
        
        /// <summary>
        /// Expands the Description with array index placeholders
        /// </summary>
        /// <param name="index">The array index (0-based)</param>
        /// <returns>The expanded description</returns>
        private string ExpandDescription(int index)
        {
            var description = Description ?? string.Empty;
            
            // Replace {i} with 0-based index
            description = description.Replace("{i}", index.ToString());
            
            // Replace {i+1} with 1-based index
            description = description.Replace("{i+1}", (index + 1).ToString());
            
            return description;
        }
        
        /// <summary>
        /// Resolves the actual path by applying array filtering
        /// </summary>
        /// <param name="vehicleData">The vehicle data to search in</param>
        /// <returns>The resolved path with actual array index, or null if not found</returns>
        public string? ResolveFilteredPath(Dictionary<string, object> vehicleData)
        {
            if (!UsesArrayFiltering())
                return Path;
                
            try
            {
                var arrayIndex = FindArrayIndexByFilter(vehicleData);
                if (arrayIndex == -1)
                    return null;
                
                var resolvedPath = Path.Replace("[*]", $"[{arrayIndex}]");
                
                // If TargetProperty is specified, append it to the path
                if (!string.IsNullOrEmpty(TargetProperty))
                {
                    resolvedPath = $"{resolvedPath}.{TargetProperty}";
                }
                
                return resolvedPath;
            }
            catch
            {
                return null;
            }
        }
        
        /// <summary>
        /// Finds the array index that matches the filter criteria
        /// </summary>
        /// <param name="vehicleData">The vehicle data to search in</param>
        /// <returns>Array index if found, -1 if not found</returns>
        private int FindArrayIndexByFilter(Dictionary<string, object> vehicleData)
        {
            if (string.IsNullOrEmpty(Filter))
                return -1;
                
            try
            {
                // Parse the filter expression: {propertyName = value}
                var filterCondition = ParseFilterExpression(Filter);
                if (filterCondition == null)
                    return -1;
                
                // Get the array path (remove [*] and any target property)
                var arrayPath = Path.Replace("[*]", "");
                if (!string.IsNullOrEmpty(TargetProperty))
                {
                    // Remove the target property from the path if it exists
                    arrayPath = arrayPath.Replace($".{TargetProperty}", "");
                }
                
                // Create a temporary parser to query the array
                var tempParser = new ClsFileParser();
                var clsString = tempParser.Generate(vehicleData);
                
                if (string.IsNullOrWhiteSpace(clsString))
                    return -1;
                
                tempParser.Parse(clsString);
                
                // Get the array from the data
                var arrayResult = tempParser.Query(arrayPath);
                if (arrayResult is not List<object> array)
                    return -1;
                
                // Search through the array for matching condition
                for (int i = 0; i < array.Count; i++)
                {
                    if (array[i] is Dictionary<string, object> arrayItem)
                    {
                        if (arrayItem.ContainsKey(filterCondition.PropertyName))
                        {
                            var itemValue = arrayItem[filterCondition.PropertyName]?.ToString();
                            if (string.Equals(itemValue, filterCondition.Value, StringComparison.OrdinalIgnoreCase))
                            {
                                return i;
                            }
                        }
                    }
                }
                
                return -1;
            }
            catch
            {
                return -1;
            }
        }
        
        /// <summary>
        /// Parses a filter expression like "{constraintName = dump}"
        /// </summary>
        /// <param name="filter">The filter expression</param>
        /// <returns>Parsed filter condition or null if invalid</returns>
        private FilterCondition? ParseFilterExpression(string filter)
        {
            if (string.IsNullOrEmpty(filter))
                return null;
                
            // Remove curly braces and trim
            filter = filter.Trim().TrimStart('{').TrimEnd('}').Trim();
            
            // Look for the = operator
            var parts = filter.Split('=', 2);
            if (parts.Length != 2)
                return null;
                
            var propertyName = parts[0].Trim();
            var value = parts[1].Trim();
            
            // Remove quotes if present
            if ((value.StartsWith('"') && value.EndsWith('"')) || 
                (value.StartsWith('\'') && value.EndsWith('\'')))
            {
                value = value.Substring(1, value.Length - 2);
            }
            
            return new FilterCondition { PropertyName = propertyName, Value = value };
        }
        
        /// <summary>
        /// Helper class to represent a filter condition
        /// </summary>
        private class FilterCondition
        {
            public string PropertyName { get; set; } = string.Empty;
            public string Value { get; set; } = string.Empty;
        }
    }

    public enum PropertyType
    {
        String,
        Integer,
        Double,
        Boolean
    }

    public static class Properties
    {
        private static List<VehicleProperty>? _properties;
        
        // Debug mode control - make verbose debugging optional
        public static bool EnableVerboseDebug { get; set; } = false;

        public static List<VehicleProperty> GetProperties()
        {
            if (_properties == null)
            {
                _properties = LoadProperties();
            }
            return _properties;
        }

        private static List<VehicleProperty> LoadProperties()
        {
            const string propertiesFile = "vehicle_properties.json";

            if (File.Exists(propertiesFile))
            {
                try
                {
                    var json = File.ReadAllText(propertiesFile);
                    var properties = JsonSerializer.Deserialize<List<VehicleProperty>>(json);
                    return properties;
                }
                catch (JsonException ex)
                {
                    if (EnableVerboseDebug)
                    {
                        System.Diagnostics.Debug.WriteLine($"Error loading vehicle properties: {ex.Message}");
                    }
                    return new List<VehicleProperty>();
                }
            } 
            return new List<VehicleProperty>();
        }

        private static void SaveProperties(List<VehicleProperty> properties)
        {
            try
            {
                var json = JsonSerializer.Serialize(properties, new JsonSerializerOptions { WriteIndented = true });
                File.WriteAllText("vehicle_properties.json", json);
            }
            catch
            {
                // Ignore save errors
            }
        }

        public static List<VehicleProperty> GetPropertiesForVehicle(string vehicleName)
        {
            var allProperties = GetProperties();
            return allProperties.Where(p => 
                string.IsNullOrEmpty(p.ShowIf) || 
                vehicleName.Contains(p.ShowIf, StringComparison.OrdinalIgnoreCase)
            ).ToList();
        }

        public static List<VehicleProperty> GetPropertiesForVehicle(string vehicleName, Dictionary<string, object>? vehicleData)
        {
            var allProperties = GetProperties();
            var filteredProperties = allProperties.Where(p => 
                string.IsNullOrEmpty(p.ShowIf) || 
                vehicleName.Contains(p.ShowIf, StringComparison.OrdinalIgnoreCase)
            ).ToList();

            if (EnableVerboseDebug)
            {
                System.Diagnostics.Debug.WriteLine($"=== GetPropertiesForVehicle for '{vehicleName}' ===");
                System.Diagnostics.Debug.WriteLine($"=== Total properties after ShowIf filter: {filteredProperties.Count} ===");
            }

            var expandedProperties = new List<VehicleProperty>();
            
            // Process each property
            foreach (var property in filteredProperties)
            {
                if (EnableVerboseDebug)
                {
                    System.Diagnostics.Debug.WriteLine($"=== Processing property: {property.DisplayName} ===");
                    System.Diagnostics.Debug.WriteLine($"=== Path: {property.Path} ===");
                    System.Diagnostics.Debug.WriteLine($"=== Uses array expansion: {property.UsesArrayExpansion()} ===");
                }
                
                if (property.UsesArrayExpansion() && vehicleData != null)
                {
                    if (EnableVerboseDebug)
                    {
                        System.Diagnostics.Debug.WriteLine($"=== Expanding array property: {property.DisplayName} ===");
                    }
                    
                    // Expand array properties into multiple properties
                    var expanded = property.ExpandArrayProperty(vehicleData);
                    
                    if (EnableVerboseDebug)
                    {
                        System.Diagnostics.Debug.WriteLine($"=== Expanded into {expanded.Count} properties ===");
                    }
                    
                    // Only add expanded properties that exist in the vehicle data
                    foreach (var expandedProperty in expanded)
                    {
                        if (EnableVerboseDebug)
                        {
                            System.Diagnostics.Debug.WriteLine($"=== Checking if expanded property path exists: {expandedProperty.Path} ===");
                        }
                        
                        if (DoesPropertyPathExist(expandedProperty.Path, vehicleData))
                        {
                            expandedProperties.Add(expandedProperty);
                            if (EnableVerboseDebug)
                            {
                                System.Diagnostics.Debug.WriteLine($"=== Added expanded property: {expandedProperty.DisplayName} ===");
                            }
                        }
                        else
                        {
                            if (EnableVerboseDebug)
                            {
                                System.Diagnostics.Debug.WriteLine($"=== Expanded property path does not exist: {expandedProperty.Path} ===");
                            }
                        }
                    }
                }
                else
                {
                    // Regular property or array filtering property
                    if (vehicleData == null || DoesPropertyPathExist(property, vehicleData))
                    {
                        expandedProperties.Add(property);
                        if (EnableVerboseDebug)
                        {
                            System.Diagnostics.Debug.WriteLine($"=== Added regular property: {property.DisplayName} ===");
                        }
                    }
                    else
                    {
                        if (EnableVerboseDebug)
                        {
                            System.Diagnostics.Debug.WriteLine($"=== Regular property path does not exist: {property.Path} ===");
                        }
                    }
                }
            }

            if (EnableVerboseDebug)
            {
                System.Diagnostics.Debug.WriteLine($"=== Final expanded properties count: {expandedProperties.Count} ===");
            }

            return expandedProperties;
        }

        public static Dictionary<string, List<VehicleProperty>> GetCategorizedProperties(string vehicleName)
        {
            var properties = GetPropertiesForVehicle(vehicleName);
            return properties.GroupBy(p => p.Category)
                           .ToDictionary(g => g.Key, g => g.ToList());
        }

        public static Dictionary<string, List<VehicleProperty>> GetCategorizedProperties(string vehicleName, Dictionary<string, object>? vehicleData)
        {
            var properties = GetPropertiesForVehicle(vehicleName, vehicleData);
            var categorizedProperties = properties.GroupBy(p => p.Category)
                                              .ToDictionary(g => g.Key, g => g.ToList());

            // Only return categories that have properties with existing paths
            return categorizedProperties.Where(kvp => kvp.Value.Count > 0)
                                      .ToDictionary(kvp => kvp.Key, kvp => kvp.Value);
        }

        // Cache for property path existence checks to avoid repeated expensive operations
        private static readonly Dictionary<string, HashSet<string>> _pathExistenceCache = new Dictionary<string, HashSet<string>>();
        
        private static bool DoesPropertyPathExist(string path, Dictionary<string, object> vehicleData)
        {
            try
            {
                if (EnableVerboseDebug)
                {
                    System.Diagnostics.Debug.WriteLine($"=== DoesPropertyPathExist called for path: {path} ===");
                }
                
                // Check if vehicle data is valid
                if (vehicleData == null || vehicleData.Count == 0)
                {
                    if (EnableVerboseDebug)
                    {
                        System.Diagnostics.Debug.WriteLine($"=== Vehicle data is null or empty ===");
                    }
                    return false;
                }
                
                // Create a cache key based on the vehicle data hash
                var vehicleDataHash = GetVehicleDataHash(vehicleData);
                if (EnableVerboseDebug)
                {
                    System.Diagnostics.Debug.WriteLine($"=== Vehicle data hash: {vehicleDataHash} ===");
                }
                
                // Check if we have cached results for this vehicle data
                if (_pathExistenceCache.TryGetValue(vehicleDataHash, out HashSet<string>? existingPaths))
                {
                    if (EnableVerboseDebug)
                    {
                        System.Diagnostics.Debug.WriteLine($"=== Using cached path existence data ===");
                    }
                    return existingPaths.Contains(path);
                }
                
                if (EnableVerboseDebug)
                {
                    System.Diagnostics.Debug.WriteLine($"=== No cached data, performing path discovery ===");
                }
                
                // If not cached, perform the expensive operation once and cache all discovered paths
                var tempParser = new ClsFileParser();
                
                if (EnableVerboseDebug)
                {
                    System.Diagnostics.Debug.WriteLine($"=== About to Generate CLS in DoesPropertyPathExist ===");
                }
                var clsString = tempParser.Generate(vehicleData);
                
                // Check if generated string is valid before parsing
                if (string.IsNullOrWhiteSpace(clsString))
                {
                    System.Diagnostics.Debug.WriteLine($"DoesPropertyPathExist: Generate returned empty string for vehicle data with {vehicleData.Count} entries");
                    _pathExistenceCache[vehicleDataHash] = new HashSet<string>();
                    return false;
                }
                
                if (EnableVerboseDebug)
                {
                    System.Diagnostics.Debug.WriteLine($"=== About to Parse in DoesPropertyPathExist ===");
                    System.Diagnostics.Debug.WriteLine($"Generated CLS length: {clsString.Length}");
                    System.Diagnostics.Debug.WriteLine($"First 300 chars: {clsString.Substring(0, Math.Min(300, clsString.Length))}");
                }
                
                tempParser.Parse(clsString);
                if (EnableVerboseDebug)
                {
                    System.Diagnostics.Debug.WriteLine($"=== Successfully parsed in DoesPropertyPathExist ===");
                }
                
                // Discover all available paths at once
                var allPaths = DiscoverAvailablePropertyPaths(vehicleData);
                var validPaths = new HashSet<string>();
                
                if (EnableVerboseDebug)
                {
                    System.Diagnostics.Debug.WriteLine($"=== About to check {allPaths.Count} discovered paths ===");
                }
                
                // Check which paths actually exist by querying them
                foreach (var discoveredPath in allPaths)
                {
                    try
                    {
                        if (EnableVerboseDebug)
                        {
                            System.Diagnostics.Debug.WriteLine($"=== Checking path: {discoveredPath} ===");
                        }
                        var result = tempParser.Query(discoveredPath);
                        if (result != null)
                        {
                            validPaths.Add(discoveredPath);
                            if (EnableVerboseDebug)
                            {
                                System.Diagnostics.Debug.WriteLine($"=== Path valid: {discoveredPath} ===");
                            }
                        }
                        else if (EnableVerboseDebug)
                        {
                            System.Diagnostics.Debug.WriteLine($"=== Path returned null: {discoveredPath} ===");
                        }
                    }
                    catch (Exception ex)
                    {
                        if (EnableVerboseDebug)
                        {
                            System.Diagnostics.Debug.WriteLine($"=== Exception checking path '{discoveredPath}': {ex.GetType().Name}: {ex.Message} ===");
                        }
                        // Ignore paths that can't be queried
                    }
                }
                
                if (EnableVerboseDebug)
                {
                    System.Diagnostics.Debug.WriteLine($"=== Found {validPaths.Count} valid paths out of {allPaths.Count} discovered paths ===");
                }
                
                // Cache the results
                _pathExistenceCache[vehicleDataHash] = validPaths;
                
                bool pathExists = validPaths.Contains(path);
                if (EnableVerboseDebug)
                {
                    System.Diagnostics.Debug.WriteLine($"=== Path '{path}' exists: {pathExists} ===");
                }
                
                return pathExists;
            }
            catch (Exception ex)
            {
                if (EnableVerboseDebug)
                {
                    System.Diagnostics.Debug.WriteLine($"=== EXCEPTION in DoesPropertyPathExist ===");
                    System.Diagnostics.Debug.WriteLine($"Path: {path}");
                    System.Diagnostics.Debug.WriteLine($"Exception: {ex.GetType().Name}: {ex.Message}");
                    System.Diagnostics.Debug.WriteLine($"Stack Trace: {ex.StackTrace}");
                }
                return false;
            }
        }
        
        /// <summary>
        /// Overloaded method to check if a VehicleProperty with filtering exists
        /// </summary>
        /// <param name="property">The VehicleProperty to check</param>
        /// <param name="vehicleData">The vehicle data to check against</param>
        /// <returns>True if the property exists and can be accessed</returns>
        private static bool DoesPropertyPathExist(VehicleProperty property, Dictionary<string, object> vehicleData)
        {
            try
            {
                if (EnableVerboseDebug)
                {
                    System.Diagnostics.Debug.WriteLine($"=== DoesPropertyPathExist called for property: {property.DisplayName} ===");
                    System.Diagnostics.Debug.WriteLine($"=== Path: {property.Path} ===");
                    System.Diagnostics.Debug.WriteLine($"=== Filter: {property.Filter ?? "none"} ===");
                }
                
                // Check if vehicle data is valid
                if (vehicleData == null || vehicleData.Count == 0)
                {
                    if (EnableVerboseDebug)
                    {
                        System.Diagnostics.Debug.WriteLine($"=== Vehicle data is null or empty ===");
                    }
                    return false;
                }
                
                // If this property uses array filtering, resolve the actual path
                string? pathToCheck;
                if (property.UsesArrayFiltering())
                {
                    pathToCheck = property.ResolveFilteredPath(vehicleData);
                    if (pathToCheck == null)
                    {
                        if (EnableVerboseDebug)
                        {
                            System.Diagnostics.Debug.WriteLine($"=== Array filtering failed to resolve path ===");
                        }
                        return false;
                    }
                    
                    if (EnableVerboseDebug)
                    {
                        System.Diagnostics.Debug.WriteLine($"=== Resolved filtered path: {pathToCheck} ===");
                    }
                }
                else
                {
                    pathToCheck = property.Path;
                }
                
                // Use the existing string-based method to check if the resolved path exists
                return DoesPropertyPathExist(pathToCheck, vehicleData);
            }
            catch (Exception ex)
            {
                if (EnableVerboseDebug)
                {
                    System.Diagnostics.Debug.WriteLine($"=== EXCEPTION in DoesPropertyPathExist (VehicleProperty) ===");
                    System.Diagnostics.Debug.WriteLine($"Property: {property.DisplayName}");
                    System.Diagnostics.Debug.WriteLine($"Path: {property.Path}");
                    System.Diagnostics.Debug.WriteLine($"Exception: {ex.GetType().Name}: {ex.Message}");
                    System.Diagnostics.Debug.WriteLine($"Stack Trace: {ex.StackTrace}");
                }
                return false;
            }
        }
        
        private static string GetVehicleDataHash(Dictionary<string, object> vehicleData)
        {
            var hashItems = new List<string>
            {
                vehicleData.Count.ToString()
            };
            
            // Take first 5 property names for hash
            hashItems.AddRange(vehicleData.Keys.Take(5));
            
            return string.Join("|", hashItems);
        }
        
        /// <summary>
        /// Clears the path existence cache - call this when vehicle data structure changes significantly
        /// </summary>
        public static void ClearPathExistenceCache()
        {
            _pathExistenceCache.Clear();
        }

        /// <summary>
        /// Debug method to help discover available property paths in vehicle data
        /// </summary>
        /// <param name="vehicleData">The vehicle data to analyze</param>
        /// <param name="prefix">Current path prefix (used for recursion)</param>
        /// <returns>List of all available property paths</returns>
        public static List<string> DiscoverAvailablePropertyPaths(Dictionary<string, object> vehicleData, string prefix = "")
        {
            var paths = new List<string>();
            
            foreach (var kvp in vehicleData)
            {
                // Check if the key contains special characters that need quoting
                var needsQuoting = NeedsQuoting(kvp.Key);
                var keyPart = needsQuoting ? $"\"{kvp.Key}\"" : kvp.Key;
                
                var currentPath = string.IsNullOrEmpty(prefix) ? keyPart : $"{prefix}.{keyPart}";
                
                if (kvp.Value is Dictionary<string, object> nestedDict)
                {
                    // Recursively explore nested dictionaries
                    paths.AddRange(DiscoverAvailablePropertyPaths(nestedDict, currentPath));
                }
                else if (kvp.Value is List<object> list)
                {
                    // Handle arrays - add the array path itself
                    paths.Add(currentPath);
                    
                    // If the array contains dictionaries, explore ALL elements, not just the first one
                    if (list.Count > 0 && list[0] is Dictionary<string, object>)
                    {
                        for (int i = 0; i < list.Count; i++)
                        {
                            if (list[i] is Dictionary<string, object> arrayItem)
                            {
                                var arrayPaths = DiscoverAvailablePropertyPaths(arrayItem, $"{currentPath}[{i}]");
                                paths.AddRange(arrayPaths);
                            }
                        }
                    }
                }
                else
                {
                    // This is a leaf value
                    paths.Add(currentPath);
                }
            }
            
            return paths;
        }

        /// <summary>
        /// Debug method to discover property paths along with their detected types
        /// </summary>
        /// <param name="vehicleData">The vehicle data to analyze</param>
        /// <param name="prefix">Current path prefix (used for recursion)</param>
        /// <returns>Dictionary of property paths and their detected types</returns>
        public static Dictionary<string, string> DiscoverPropertyPathsWithTypes(Dictionary<string, object> vehicleData, string prefix = "")
        {
            var pathTypes = new Dictionary<string, string>();
            
            foreach (var kvp in vehicleData)
            {
                // Check if the key contains special characters that need quoting
                var needsQuoting = NeedsQuoting(kvp.Key);
                var keyPart = needsQuoting ? $"\"{kvp.Key}\"" : kvp.Key;
                
                var currentPath = string.IsNullOrEmpty(prefix) ? keyPart : $"{prefix}.{keyPart}";
                
                if (kvp.Value is Dictionary<string, object> nestedDict)
                {
                    // Recursively explore nested dictionaries
                    var nestedTypes = DiscoverPropertyPathsWithTypes(nestedDict, currentPath);
                    foreach (var nested in nestedTypes)
                    {
                        pathTypes[nested.Key] = nested.Value;
                    }
                }
                else if (kvp.Value is List<object> list)
                {
                    // Handle arrays
                    pathTypes[currentPath] = $"Array[{list.Count}]";
                    
                    // If the array contains dictionaries, explore ALL elements, not just the first one
                    if (list.Count > 0 && list[0] is Dictionary<string, object>)
                    {
                        for (int i = 0; i < list.Count; i++)
                        {
                            if (list[i] is Dictionary<string, object> arrayItem)
                            {
                                var arrayTypes = DiscoverPropertyPathsWithTypes(arrayItem, $"{currentPath}[{i}]");
                                foreach (var arrayType in arrayTypes)
                                {
                                    pathTypes[arrayType.Key] = arrayType.Value;
                                }
                            }
                        }
                    }
                }
                else
                {
                    // This is a leaf value - determine its type
                    var dummyProperty = new VehicleProperty();
                    var detectedType = dummyProperty.GetPropertyType(kvp.Value);
                    pathTypes[currentPath] = $"{detectedType} ({kvp.Value?.GetType().Name ?? "null"})";
                }
            }
            
            return pathTypes;
        }

        /// <summary>
        /// Check if a property key needs quoting based on the same logic as ClsParser.Library
        /// </summary>
        /// <param name="key">The property key to check</param>
        /// <returns>True if the key needs quotes, false otherwise</returns>
        private static bool NeedsQuoting(string key)
        {
            // Check if key contains special characters that require quotes
            if (key.Contains('[') || key.Contains(']') || key.Contains(' ') || key.Contains('-'))
                return true;
            
            // Check if key is a numeric string (needs quotes to preserve as string)
            if (int.TryParse(key, out _) || double.TryParse(key, out _))
                return true;
            
            // Check if key starts with a number (not a valid identifier)
            if (key.Length > 0 && char.IsDigit(key[0]))
                return true;
            
            return false;
        }

        /// <summary>
        /// Test a property path to see if it can be queried successfully
        /// </summary>
        /// <param name="vehicleData">The vehicle data to test against</param>
        /// <param name="path">The property path to test</param>
        /// <returns>Result object containing success status and value or error details</returns>
        public static PropertyTestResult TestPropertyPath(Dictionary<string, object> vehicleData, string path)
        {
            try
            {
                if (vehicleData == null || vehicleData.Count == 0)
                {
                    return new PropertyTestResult 
                    { 
                        Success = false, 
                        ErrorMessage = "Vehicle data is null or empty" 
                    };
                }

                var tempParser = new ClsFileParser();
                var clsString = tempParser.Generate(vehicleData);
                
                if (string.IsNullOrWhiteSpace(clsString))
                {
                    return new PropertyTestResult 
                    { 
                        Success = false, 
                        ErrorMessage = "Generated CLS string is empty" 
                    };
                }

                tempParser.Parse(clsString);
                var result = tempParser.Query(path);
                
                return new PropertyTestResult
                {
                    Success = true,
                    Value = result,
                    ValueType = result?.GetType().Name ?? "null"
                };
            }
            catch (Exception ex)
            {
                return new PropertyTestResult
                {
                    Success = false,
                    ErrorMessage = $"{ex.GetType().Name}: {ex.Message}"
                };
            }
        }

        /// <summary>
        /// Find all property paths that contain square brackets in their names
        /// </summary>
        /// <param name="vehicleData">The vehicle data to analyze</param>
        /// <returns>List of paths with square brackets and their suggested quoted versions</returns>
        public static List<BracketPropertyInfo> FindBracketProperties(Dictionary<string, object> vehicleData)
        {
            var results = new List<BracketPropertyInfo>();
            var allPaths = DiscoverAvailablePropertyPaths(vehicleData);
            
            foreach (var path in allPaths)
            {
                if (path.Contains('[') && path.Contains(']'))
                {
                    // This path contains brackets - it's likely a quoted property
                    var testResult = TestPropertyPath(vehicleData, path);
                    
                    results.Add(new BracketPropertyInfo
                    {
                        OriginalPath = path,
                        IsAccessible = testResult.Success,
                        Value = testResult.Value,
                        ErrorMessage = testResult.ErrorMessage
                    });
                }
            }
            
            return results;
        }

        /// <summary>
        /// Add a new vehicle property to the configuration
        /// </summary>
        /// <param name="property">The property to add</param>
        /// <returns>True if added successfully, false if property with same Path already exists</returns>
        public static bool AddProperty(VehicleProperty property)
        {
            var properties = GetProperties();
            
            // Check if property with same path already exists
            if (properties.Any(p => p.Path.Equals(property.Path, StringComparison.OrdinalIgnoreCase)))
            {
                return false;
            }
            
            properties.Add(property);
            SaveProperties(properties);
            
            // Clear cache to force reload
            _properties = null;
            
            return true;
        }

        /// <summary>
        /// Update an existing vehicle property
        /// </summary>
        /// <param name="originalPath">The original path of the property to update</param>
        /// <param name="updatedProperty">The updated property data</param>
        /// <returns>True if updated successfully, false if property not found</returns>
        public static bool UpdateProperty(string originalPath, VehicleProperty updatedProperty)
        {
            var properties = GetProperties();
            var existingProperty = properties.FirstOrDefault(p => p.Path.Equals(originalPath, StringComparison.OrdinalIgnoreCase));
            
            if (existingProperty == null)
            {
                return false;
            }
            
            // Update all fields
            existingProperty.Path = updatedProperty.Path;
            existingProperty.MultiPath = updatedProperty.MultiPath;
            existingProperty.Category = updatedProperty.Category;
            existingProperty.ShowIf = updatedProperty.ShowIf;
            existingProperty.Options = updatedProperty.Options;
            existingProperty.DisplayName = updatedProperty.DisplayName;
            existingProperty.Description = updatedProperty.Description;
            existingProperty.MinValue = updatedProperty.MinValue;
            existingProperty.MaxValue = updatedProperty.MaxValue;
            existingProperty.Step = updatedProperty.Step;
            existingProperty.Filter = updatedProperty.Filter;
            existingProperty.TargetProperty = updatedProperty.TargetProperty;
            existingProperty.TableGroup = updatedProperty.TableGroup;
            
            SaveProperties(properties);
            
            // Clear cache to force reload
            _properties = null;
            
            return true;
        }

        /// <summary>
        /// Remove a vehicle property from the configuration
        /// </summary>
        /// <param name="path">The path of the property to remove</param>
        /// <returns>True if removed successfully, false if property not found</returns>
        public static bool RemoveProperty(string path)
        {
            var properties = GetProperties();
            var propertyToRemove = properties.FirstOrDefault(p => p.Path.Equals(path, StringComparison.OrdinalIgnoreCase));
            
            if (propertyToRemove == null)
            {
                return false;
            }
            
            properties.Remove(propertyToRemove);
            SaveProperties(properties);
            
            // Clear cache to force reload
            _properties = null;
            
            return true;
        }

        /// <summary>
        /// Save the current properties list to file
        /// </summary>
        /// <returns>True if saved successfully, false otherwise</returns>
        public static bool SavePropertiesToFile()
        {
            try
            {
                var properties = GetProperties();
                SaveProperties(properties);
                return true;
            }
            catch
            {
                return false;
            }
        }

        /// <summary>
        /// Reload properties from file
        /// </summary>
        public static void ReloadProperties()
        {
            _properties = null;
            ClearPathExistenceCache();
        }

        /// <summary>
        /// Get all unique categories from the current properties
        /// </summary>
        /// <returns>List of unique category names</returns>
        public static List<string> GetAllCategories()
        {
            var properties = GetProperties();
            return properties.Select(p => p.Category)
                           .Where(c => !string.IsNullOrWhiteSpace(c))
                           .Distinct()
                           .OrderBy(c => c)
                           .ToList();
        }

        /// <summary>
        /// Validate a vehicle property configuration
        /// </summary>
        /// <param name="property">The property to validate</param>
        /// <returns>List of validation errors (empty if valid)</returns>
        public static List<string> ValidateProperty(VehicleProperty property)
        {
            var errors = new List<string>();
            
            if (string.IsNullOrWhiteSpace(property.Path))
            {
                errors.Add("Path is required");
            }
            
            if (string.IsNullOrWhiteSpace(property.DisplayName))
            {
                errors.Add("Display Name is required");
            }
            
            if (string.IsNullOrWhiteSpace(property.Category))
            {
                errors.Add("Category is required");
            }
            
            // Validate numeric constraints
            if (property.MinValue.HasValue && property.MaxValue.HasValue && property.MinValue > property.MaxValue)
            {
                errors.Add("Minimum value cannot be greater than maximum value");
            }
            
            if (property.Step.HasValue && property.Step <= 0)
            {
                errors.Add("Step value must be greater than zero");
            }
            
            // Validate array filtering syntax
            if (property.Path.Contains("[*]"))
            {
                if (!string.IsNullOrEmpty(property.Filter))
                {
                    // Validate filter expression format
                    if (!property.Filter.Contains("{") || !property.Filter.Contains("}") || !property.Filter.Contains("="))
                    {
                        errors.Add("Filter expression must be in format: {propertyName = value}");
                    }
                }
                else if (string.IsNullOrEmpty(property.Filter) && !string.IsNullOrEmpty(property.TargetProperty))
                {
                    errors.Add("TargetProperty should only be used with Filter for array filtering");
                }
            }
            else
            {
                if (!string.IsNullOrEmpty(property.Filter))
                {
                    errors.Add("Filter can only be used with array paths containing [*]");
                }
                
                if (!string.IsNullOrEmpty(property.TargetProperty))
                {
                    errors.Add("TargetProperty can only be used with array paths containing [*]");
                }
            }
            
            return errors;
        }
    }

    /// <summary>
    /// Result of testing a property path
    /// </summary>
    public class PropertyTestResult
    {
        public bool Success { get; set; }
        public object? Value { get; set; }
        public string? ValueType { get; set; }
        public string? ErrorMessage { get; set; }
    }

    /// <summary>
    /// Information about a property that contains square brackets
    /// </summary>
    public class BracketPropertyInfo
    {
        public string OriginalPath { get; set; } = string.Empty;
        public bool IsAccessible { get; set; }
        public object? Value { get; set; }
        public string? ErrorMessage { get; set; }
    }
}