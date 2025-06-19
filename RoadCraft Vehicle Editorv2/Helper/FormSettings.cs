using RoadCraft_Vehicle_Editorv2.Parser;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;

namespace RoadCraft_Vehicle_Editorv2.Helper
{
    public static class FormSettings
    {
        public enum ValueType
        {
            Auto, String, Int, Float, Double, Bool, Label
        }

        public enum Group
        {
            General, Dump, Steering, Crane, Width, Gear, User
        }

        public static readonly Setting[] SettingsToShow;

        static FormSettings()
        {
            var builtIn = new List<Setting>
            {
                // General Settings
                new Setting("", "General Settings", Group.General, ValueType.Label),
                new Setting("properties.prop_truck_rb.engine.params.torque", "Torque", Group.General),
                new Setting("properties.prop_truck_gearbox_controller.awdMode", "AWD", Group.General),
                new Setting("properties.prop_truck_gearbox_controller.diffLockMode", "Diff Lock", Group.General),
                new Setting("properties.prop_truck_gearbox_controller.isLowGearAvailable", "Low Gear", Group.General, ForcedType: ValueType.Bool),

                // Dumptruck Settings
                new Setting("", "Dumptruck Settings", Group.Dump, ValueType.Label),
                new Setting("properties.prop_truck_constraint_view.controllableConstraints", "Dump Tilt Speed", Group.Dump, ValueType.Int, null, "constraintName = \"dump\"", "angularSpeed"),

                // Steering Settings
                new Setting("", "Steering Settings", Group.Steering, ValueType.Label),
                new Setting("properties.prop_truck_rb.maxSteerSpeed", "Maximum Steering Speed", Group.Steering, ValueType.Float),
                new Setting("properties.prop_truck_rb.backSteerSpeed", "Backs Steer Speed", Group.Steering, ValueType.Float),
                new Setting("properties.prop_truck_rb.controllableSteeringConstraints[0].angularSpeed", "Steering Speed (Angular Speed)", Group.Steering, ValueType.Float),
                new Setting("properties.prop_truck_rb.controllableSteeringConstraints[0].speed", "Steering Speed (Normal Speed?)", Group.Steering, ValueType.Float),
                new Setting("properties.prop_truck_rb.controllableSteeringConstraints[0].minAngle", "Steering Minimum Angle", Group.Steering, ValueType.Float),
                new Setting("properties.prop_truck_rb.controllableSteeringConstraints[0].maxAngle", "Steering Maximum Angle", Group.Steering, ValueType.Float),

                // Crane Settings
                new Setting("", "Crane Settings", Group.Crane, ValueType.Label),
                new Setting("properties.prop_ik.movementspeedXZ", "Crane Horizontal Speed", Group.Crane, ForcedType: ValueType.Float),
                new Setting("properties.prop_ik.movementspeedY", "Crane Vertical Speed", Group.Crane, ForcedType: ValueType.Float),

                // Working Width Settings
                new Setting("", "Working Width Settings", Group.Width, ValueType.Label),
                new Setting("properties.prop_truck_flattener.flattener.size.x", "Dozer Working Width", Group.Width, ValueType.Float),
                new Setting("properties.prop_truck_asphalt_roller.asphaltRoller.size.x", "Asphalt Roller Working Width", Group.Width, ValueType.Float),
                new Setting("properties.prop_truck_asphalter.asphalter.size.x", "Asphalter Working Width", Group.Width, ValueType.Float),

                // Gear Settings
                new Setting("", "Gear Settings", Group.Gear, ValueType.Label),
                new Setting("properties.prop_truck_rb.gearbox.params.clutchSwitchTime", "Clutch Switch Time", Group.Gear, ValueType.Float),
                new Setting("properties.prop_truck_rb.gearbox.params.defaultGearSwitchDelay", "Default Gear Switch Delay", Group.Gear, ValueType.Float),
                new Setting("properties.prop_truck_rb.gearbox.params.upperGearSwitchDelayBase", "Upper Gear Switch Delay Base", Group.Gear, ValueType.Float),
                new Setting("properties.prop_truck_rb.gearbox.params.upperGearSwitchDelayGearNumMultiplier", "Upper Gear Switch Delay Multiplier", Group.Gear, ValueType.Float),
                new Setting("properties.prop_truck_rb.gearbox.params.downGearSwitchDelay", "Down Gear Switch Delay", Group.Gear, ValueType.Float),
                new Setting("properties.prop_truck_rb.gearbox.params.neutralGearSwitchingDelay", "Neutral Switching Delay", Group.Gear, ValueType.Float),
                new Setting("properties.prop_truck_rb.gearbox.params.highGear.angularVelocity", "High Gear Angular Velocity", Group: Group.Gear, ForcedType: ValueType.Float),
                new Setting("properties.prop_truck_rb.gearbox.params.highGear.gearRatio", "High Gear Gear Ratio", Group: Group.Gear, ForcedType: ValueType.Float),
                new Setting("properties.prop_truck_rb.gearbox.params.lowRangeGear.angularVelocity", "Low Gear Angular Velocity", Group: Group.Gear, ForcedType: ValueType.Float),
                new Setting("properties.prop_truck_rb.gearbox.params.lowRangeGear.gearRatio", "Low Gear Gear Ratio", Group: Group.Gear, ForcedType: ValueType.Float),
                new Setting("properties.prop_truck_rb.gearbox.params.reverseGear.angularVelocity", "Reverse Gear Angular Velocity", Group: Group.Gear, ForcedType: ValueType.Float),
                new Setting("properties.prop_truck_rb.gearbox.params.reverseGear.gearRatio", "Reverse Gear Gear Ratio", Group: Group.Gear, ForcedType: ValueType.Float),
                new Setting("properties.prop_truck_rb.gearbox.params.gears.*.angularVelocity", "Gear {i+1} Angular Velocity", Group: Group.Gear, ForcedType: ValueType.Float),
                new Setting("properties.prop_truck_rb.gearbox.params.gears.*.gearRatio", "Gear {i+1} Ratio", Group: Group.Gear, ForcedType: ValueType.Float),
            };

            var userSettingsPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "user_settings.json");
            UserSettingsHelper.EnsureDefaultUserSettingsFile(userSettingsPath);
            var userSettings = UserSettingsHelper.LoadUserSettings(userSettingsPath)
                .Select(s => s with { Group = Group.User })
                .ToList();

            // Add a label for user settings if any exist
            if (userSettings.Count > 0)
            {
                builtIn.Add(new Setting("", "User Settings", Group.User, ValueType.Label));
            }

            SettingsToShow = builtIn.Concat(userSettings).ToArray();
        }

        public static readonly Dictionary<string, string[]> PropertyDropdownOptions = new()
        {
            ["properties.prop_truck_gearbox_controller.awdMode"] = new[] { "ALWAYS_ON", "ALWAYS_OFF", "CONTROLLED" },
            ["properties.prop_truck_gearbox_controller.diffLockMode"] = new[] { "ALWAYS_ON", "ALWAYS_OFF", "CONTROLLED" }
        };

        public record Setting(
            string Path,
            string PrettyName,
            Group? Group = null,
            ValueType? ForcedType = null,
            Func<ClsParser, bool>? ShowIf = null,
            string? Filter = null,
            string? FilteredSubProperty = null
        );

        public static ValueType? GetForcedTypeForPath(string path)
        {
            // Normalize path to handle lookups for both wildcard and specific-index paths.
            string normalizedPath = path.Replace("[*]", ".*");
            foreach (var setting in SettingsToShow)
            {
                if (setting.Path == normalizedPath || setting.Path == path)
                    return setting.ForcedType;
            }
            return null;
        }
    }
}