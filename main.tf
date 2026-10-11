resource "databricks_restrict_workspace_admins_setting" "restrict_workspace_admins_settings" {
  for_each = var.restrict_workspace_admins_settings

  etag         = each.value.etag
  setting_name = each.value.setting_name

  restrict_workspace_admins {
    disable_gov_tag_creation = each.value.restrict_workspace_admins.disable_gov_tag_creation
    status                   = each.value.restrict_workspace_admins.status
  }

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

