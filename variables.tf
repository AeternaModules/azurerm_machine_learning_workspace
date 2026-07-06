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
    storage_account_access_type     = optional(string) # Default: "AccessKey"
    sku_name                        = optional(string) # Default: "Basic"
    service_side_encryption_enabled = optional(bool)   # Default: false
    public_network_access_enabled   = optional(bool)   # Default: true
    primary_user_assigned_identity  = optional(string)
    high_business_impact            = optional(bool)
    image_build_compute_name        = optional(string)
    tags                            = optional(map(string))
    friendly_name                   = optional(string)
    description                     = optional(string)
    container_registry_id           = optional(string)
    kind                            = optional(string) # Default: "Default"
    v1_legacy_mode_enabled          = optional(bool)   # Default: false
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
      provision_on_creation_enabled = optional(bool) # Default: false
    }))
    serverless_compute = optional(object({
      public_ip_enabled = optional(bool) # Default: false
      subnet_id         = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.machine_learning_workspaces : (
        v.kind == null || (contains(["Default", "FeatureStore"], v.kind))
      )
    ])
    error_message = "must be one of: Default, FeatureStore"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_machine_learning_workspace's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.WorkspaceName] !ok
  # path: name
  #   source:    [from validate.WorkspaceName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: application_insights_id
  #   source:    [from components.ValidateComponentID] !ok
  # path: application_insights_id
  #   source:    [from components.ValidateComponentID] err != nil
  # path: key_vault_id
  #   source:    [from commonids.ValidateKeyVaultID] !ok
  # path: key_vault_id
  #   source:    [from commonids.ValidateKeyVaultID] err != nil
  # path: storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] !ok
  # path: storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] err != nil
  # path: identity.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: primary_user_assigned_identity
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: primary_user_assigned_identity
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: container_registry_id
  #   source:    [from registries.ValidateRegistryID] !ok
  # path: container_registry_id
  #   source:    [from registries.ValidateRegistryID] err != nil
  # path: encryption.key_id
  #   source:    validation.IsURLWithHTTPorHTTPS(...) - no translation rule yet, add one
  # path: encryption.user_assigned_identity_id
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: encryption.user_assigned_identity_id
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: managed_network.isolation_mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: sku_name
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: storage_account_access_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: serverless_compute.subnet_id
  #   source:    [from commonids.ValidateSubnetID] !ok
  # path: serverless_compute.subnet_id
  #   source:    [from commonids.ValidateSubnetID] err != nil
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

