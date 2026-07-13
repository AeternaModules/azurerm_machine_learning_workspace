variable "machine_learning_workspaces" {
  description = <<EOT
Map of machine_learning_workspaces, attributes below
Required:
    - application_insights_id
    - key_vault_id
    - location
    - name
    - resource_group_name
    - storage_account_id
    - identity (block):
        - identity_ids (optional)
        - type (required)
Optional:
    - container_registry_id
    - description
    - friendly_name
    - high_business_impact
    - image_build_compute_name
    - kind
    - primary_user_assigned_identity
    - public_network_access_enabled
    - service_side_encryption_enabled
    - sku_name
    - storage_account_access_type
    - tags
    - v1_legacy_mode_enabled
    - encryption (block):
        - key_id (required)
        - key_vault_id (required)
        - user_assigned_identity_id (optional)
    - feature_store (block):
        - computer_spark_runtime_version (optional)
        - offline_connection_name (optional)
        - online_connection_name (optional)
    - managed_network (block):
        - isolation_mode (optional)
        - provision_on_creation_enabled (optional)
    - serverless_compute (block):
        - public_ip_enabled (optional)
        - subnet_id (optional)
EOT

  type = map(object({
    application_insights_id         = string
    key_vault_id                    = string
    location                        = string
    name                            = string
    resource_group_name             = string
    storage_account_id              = string
    storage_account_access_type     = optional(string)
    sku_name                        = optional(string)
    service_side_encryption_enabled = optional(bool)
    public_network_access_enabled   = optional(bool)
    primary_user_assigned_identity  = optional(string)
    high_business_impact            = optional(bool)
    image_build_compute_name        = optional(string)
    tags                            = optional(map(string))
    friendly_name                   = optional(string)
    description                     = optional(string)
    container_registry_id           = optional(string)
    kind                            = optional(string)
    v1_legacy_mode_enabled          = optional(bool)
    identity = object({
      identity_ids = optional(set(string))
      type         = string
    })
    encryption = optional(object({
      key_id                    = string
      key_vault_id              = string
      user_assigned_identity_id = optional(string)
    }))
    feature_store = optional(object({
      computer_spark_runtime_version = optional(string)
      offline_connection_name        = optional(string)
      online_connection_name         = optional(string)
    }))
    managed_network = optional(object({
      isolation_mode                = optional(string)
      provision_on_creation_enabled = optional(bool)
    }))
    serverless_compute = optional(object({
      public_ip_enabled = optional(bool)
      subnet_id         = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.machine_learning_workspaces : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.machine_learning_workspaces : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.machine_learning_workspaces : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.machine_learning_workspaces : (
        v.kind == null || (contains(["Default", "FeatureStore"], v.kind))
      )
    ])
    error_message = "must be one of: Default, FeatureStore"
  }
  validation {
    condition = alltrue([
      for k, v in var.machine_learning_workspaces : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 30 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

