variable "restrict_workspace_admins_settings" {
  description = <<EOT
Map of restrict_workspace_admins_settings, attributes below
Required:
    - restrict_workspace_admins (block):
        - disable_gov_tag_creation (optional)
        - status (required)
Optional:
    - etag
    - setting_name
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    etag         = optional(string)
    setting_name = optional(string)
    restrict_workspace_admins = object({
      disable_gov_tag_creation = optional(bool)
      status                   = string
    })
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

