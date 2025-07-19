using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Text.Json;

namespace RoadCraft_Vehicle_Editor_v2___new_edition
{
    // Global config, accessed from anywhere
    public static class GlobalConfig
    {
        private static ConfigHandler _configHandler = new ConfigHandler();
        private static AppSettings _appSettings;

        static GlobalConfig()
        {
            _appSettings = _configHandler.LoadAppSettings<AppSettings>();
        }

        public static AppSettings AppSettings => _appSettings;

        public static void SaveAppSettings()
        {
            _configHandler.SaveAppSettings(_appSettings);
        }

        public static void ReloadAppSettings()
        {
            _appSettings = _configHandler.LoadAppSettings<AppSettings>();
        }
    }

    // App settings model
    public class AppSettings
    {
        public string RoadCraftFolder { get; set; } = string.Empty;
        public string LastSelectedFolder { get; set; } = string.Empty;
        public bool FirstRun { get; set; } = true;
        public bool AutoLoadOnStartup { get; set; } = false;
    }

    // Config
    internal class ConfigHandler
    {
        private const string AppSettingsFile = "app_settings.json";

        public ConfigHandler()
        {
            EnsureConfigFilesExist();
        }

        private void EnsureConfigFilesExist()
        {
            CreateEmptyJsonFileIfNotExists(AppSettingsFile);
        }

        private void CreateEmptyJsonFileIfNotExists(string fileName)
        {
            if (!File.Exists(fileName))
            {
                File.WriteAllText(fileName, "{}");
            }
        }

        public T LoadConfig<T>(string fileName) where T : new()
        {
            if (!File.Exists(fileName))
            {
                return new T();
            }

            try
            {
                string jsonContent = File.ReadAllText(fileName);
                return JsonSerializer.Deserialize<T>(jsonContent) ?? new T();
            }
            catch
            {
                return new T();
            }
        }

        public void SaveConfig<T>(string fileName, T config)
        {
            try
            {
                string jsonContent = JsonSerializer.Serialize(config, new JsonSerializerOptions { WriteIndented = true });
                File.WriteAllText(fileName, jsonContent);
            }
            catch (Exception ex)
            {
                // Log the error for debugging - previously was just "//todo"
                System.Diagnostics.Debug.WriteLine($"Failed to save config file '{fileName}': {ex.Message}");
                // In a production app, you might want to notify the user or log to a file
            }
        }

        public T LoadAppSettings<T>() where T : new()
        {
            return LoadConfig<T>(AppSettingsFile);
        }

        public void SaveAppSettings<T>(T settings)
        {
            SaveConfig(AppSettingsFile, settings);
        }

    }
}
