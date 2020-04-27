using System.Collections.Generic;
using VirtoCommerce.Platform.Core.Settings;

namespace VirtoCommerce.TrainingModule.Core
{
    public static class ModuleConstants
    {
        public static class Security
        {
            public static class Permissions
            {
                public const string Access = "trainingModule:access";
                public const string Create = "trainingModule:create";
                public const string Read = "trainingModule:read";
                public const string Update = "trainingModule:update";
                public const string Delete = "trainingModule:delete";

                public static string[] AllPermissions { get; } = { Read, Create, Access, Update, Delete };
            }
        }

        public static class Settings
        {
            public static class General
            {
                public static SettingDescriptor TrainingModuleEnabled { get; } = new SettingDescriptor
                {
                    Name = "TrainingModule.TrainingModuleEnabled",
                    GroupName = "TrainingModule|General",
                    ValueType = SettingValueType.Boolean,
                    DefaultValue = false
                };

                public static SettingDescriptor TrainingModulePassword { get; } = new SettingDescriptor
                {
                    Name = "TrainingModule.TrainingModulePassword",
                    GroupName = "TrainingModule|Advanced",
                    ValueType = SettingValueType.SecureString,
                    DefaultValue = "qwerty"
                };

                public static IEnumerable<SettingDescriptor> AllSettings
                {
                    get
                    {
                        yield return TrainingModuleEnabled;
                        yield return TrainingModulePassword;
                    }
                }
            }

            public static IEnumerable<SettingDescriptor> AllSettings
            {
                get
                {
                    return General.AllSettings;
                }
            }
        }
    }
}
