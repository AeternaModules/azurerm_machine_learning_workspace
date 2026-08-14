output "machine_learning_workspaces_id" {
  description = "Map of id values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.id if v.id != null && length(v.id) > 0 }
}
output "machine_learning_workspaces_application_insights_id" {
  description = "Map of application_insights_id values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.application_insights_id if v.application_insights_id != null && length(v.application_insights_id) > 0 }
}
output "machine_learning_workspaces_container_registry_id" {
  description = "Map of container_registry_id values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.container_registry_id if v.container_registry_id != null && length(v.container_registry_id) > 0 }
}
output "machine_learning_workspaces_description" {
  description = "Map of description values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.description if v.description != null && length(v.description) > 0 }
}
output "machine_learning_workspaces_discovery_url" {
  description = "Map of discovery_url values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.discovery_url if v.discovery_url != null && length(v.discovery_url) > 0 }
}
output "machine_learning_workspaces_encryption" {
  description = "Map of encryption values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => one(v.encryption) if v.encryption != null && length(v.encryption) > 0 }
}
output "machine_learning_workspaces_feature_store" {
  description = "Map of feature_store values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => one(v.feature_store) if v.feature_store != null && length(v.feature_store) > 0 }
}
output "machine_learning_workspaces_friendly_name" {
  description = "Map of friendly_name values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.friendly_name if v.friendly_name != null && length(v.friendly_name) > 0 }
}
output "machine_learning_workspaces_high_business_impact" {
  description = "Map of high_business_impact values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.high_business_impact if v.high_business_impact != null }
}
output "machine_learning_workspaces_identity" {
  description = "Map of identity values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => one(v.identity) if v.identity != null && length(v.identity) > 0 }
}
output "machine_learning_workspaces_image_build_compute_name" {
  description = "Map of image_build_compute_name values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.image_build_compute_name if v.image_build_compute_name != null && length(v.image_build_compute_name) > 0 }
}
output "machine_learning_workspaces_key_vault_id" {
  description = "Map of key_vault_id values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.key_vault_id if v.key_vault_id != null && length(v.key_vault_id) > 0 }
}
output "machine_learning_workspaces_kind" {
  description = "Map of kind values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.kind if v.kind != null && length(v.kind) > 0 }
}
output "machine_learning_workspaces_location" {
  description = "Map of location values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.location if v.location != null && length(v.location) > 0 }
}
output "machine_learning_workspaces_managed_network" {
  description = "Map of managed_network values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => one(v.managed_network) if v.managed_network != null && length(v.managed_network) > 0 }
}
output "machine_learning_workspaces_name" {
  description = "Map of name values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.name if v.name != null && length(v.name) > 0 }
}
output "machine_learning_workspaces_primary_user_assigned_identity" {
  description = "Map of primary_user_assigned_identity values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.primary_user_assigned_identity if v.primary_user_assigned_identity != null && length(v.primary_user_assigned_identity) > 0 }
}
output "machine_learning_workspaces_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.public_network_access_enabled if v.public_network_access_enabled != null }
}
output "machine_learning_workspaces_resource_group_name" {
  description = "Map of resource_group_name values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "machine_learning_workspaces_serverless_compute" {
  description = "Map of serverless_compute values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => one(v.serverless_compute) if v.serverless_compute != null && length(v.serverless_compute) > 0 }
}
output "machine_learning_workspaces_service_side_encryption_enabled" {
  description = "Map of service_side_encryption_enabled values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.service_side_encryption_enabled if v.service_side_encryption_enabled != null }
}
output "machine_learning_workspaces_sku_name" {
  description = "Map of sku_name values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.sku_name if v.sku_name != null && length(v.sku_name) > 0 }
}
output "machine_learning_workspaces_storage_account_access_type" {
  description = "Map of storage_account_access_type values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.storage_account_access_type if v.storage_account_access_type != null && length(v.storage_account_access_type) > 0 }
}
output "machine_learning_workspaces_storage_account_id" {
  description = "Map of storage_account_id values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.storage_account_id if v.storage_account_id != null && length(v.storage_account_id) > 0 }
}
output "machine_learning_workspaces_tags" {
  description = "Map of tags values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "machine_learning_workspaces_v1_legacy_mode_enabled" {
  description = "Map of v1_legacy_mode_enabled values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.v1_legacy_mode_enabled if v.v1_legacy_mode_enabled != null }
}
output "machine_learning_workspaces_workspace_id" {
  description = "Map of workspace_id values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.workspace_id if v.workspace_id != null && length(v.workspace_id) > 0 }
}

