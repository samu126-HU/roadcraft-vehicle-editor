using System.Text.Json;

namespace RoadCraft_Vehicle_Editorv2.Helper
{
    public static class UserSettingsHelper
    {
        public class SettingDto
        {
            public string Path { get; set; } = "";
            public string PrettyName { get; set; } = "";
            public string? Group { get; set; }
            public string? ForcedType { get; set; }
            public string? Filter { get; set; }
            public string? FilteredSubProperty { get; set; }
        }

        public static IEnumerable<FormSettings.Setting> LoadUserSettings(string jsonPath)
        {
            if (!File.Exists(jsonPath)) yield break;
            var json = File.ReadAllText(jsonPath);
            List<SettingDto>? dtos = null;
            try
            {
                dtos = JsonSerializer.Deserialize<List<SettingDto>>(json);
            }
            catch
            {
                yield break;
            }
            if (dtos == null) yield break;

            foreach (var dto in dtos)
            {
                FormSettings.ValueType? forcedType = null;
                if (!string.IsNullOrWhiteSpace(dto.ForcedType) && Enum.TryParse<FormSettings.ValueType>(dto.ForcedType, true, out var vt))
                    forcedType = vt;

                // Always assign Group.User for user settings
                yield return new FormSettings.Setting(
                    dto.Path,
                    dto.PrettyName,
                    FormSettings.Group.User,
                    forcedType,
                    null, // ShowIf not supported in user JSON
                    dto.Filter,
                    dto.FilteredSubProperty
                );
            }
        }

        public static void EnsureDefaultUserSettingsFile(string jsonPath)
        {
            if (File.Exists(jsonPath)) return;

            var defaultJson = """
                [
                  {
                  }
                ]
                """;
            File.WriteAllText(jsonPath, defaultJson);
        }
    }
}