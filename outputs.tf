output "restrict_workspace_admins_settings_id" {
  description = "Map of id values across all restrict_workspace_admins_settings, keyed the same as var.restrict_workspace_admins_settings except keys with no id are omitted"
  value       = { for k, v in databricks_restrict_workspace_admins_setting.restrict_workspace_admins_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "restrict_workspace_admins_settings_etag" {
  description = "Map of etag values across all restrict_workspace_admins_settings, keyed the same as var.restrict_workspace_admins_settings except keys with no etag are omitted"
  value       = { for k, v in databricks_restrict_workspace_admins_setting.restrict_workspace_admins_settings : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "restrict_workspace_admins_settings_provider_config" {
  description = "Map of provider_config values across all restrict_workspace_admins_settings, keyed the same as var.restrict_workspace_admins_settings except keys with no provider_config are omitted"
  value       = { for k, v in databricks_restrict_workspace_admins_setting.restrict_workspace_admins_settings : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "restrict_workspace_admins_settings_restrict_workspace_admins" {
  description = "Map of restrict_workspace_admins values across all restrict_workspace_admins_settings, keyed the same as var.restrict_workspace_admins_settings except keys with no restrict_workspace_admins are omitted"
  value       = { for k, v in databricks_restrict_workspace_admins_setting.restrict_workspace_admins_settings : k => one(v.restrict_workspace_admins) if v.restrict_workspace_admins != null && length(v.restrict_workspace_admins) > 0 }
}
output "restrict_workspace_admins_settings_setting_name" {
  description = "Map of setting_name values across all restrict_workspace_admins_settings, keyed the same as var.restrict_workspace_admins_settings except keys with no setting_name are omitted"
  value       = { for k, v in databricks_restrict_workspace_admins_setting.restrict_workspace_admins_settings : k => v.setting_name if v.setting_name != null && length(v.setting_name) > 0 }
}

