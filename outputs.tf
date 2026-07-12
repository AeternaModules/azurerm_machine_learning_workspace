output "machine_learning_workspaces_application_insights_id" {
  description = "Map of application_insights_id values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.application_insights_id }
}
output "machine_learning_workspaces_container_registry_id" {
  description = "Map of container_registry_id values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.container_registry_id }
}
output "machine_learning_workspaces_description" {
  description = "Map of description values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.description }
}
output "machine_learning_workspaces_discovery_url" {
  description = "Map of discovery_url values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.discovery_url }
}
output "machine_learning_workspaces_encryption" {
  description = "Map of encryption values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.encryption }
}
output "machine_learning_workspaces_feature_store" {
  description = "Map of feature_store values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.feature_store }
}
output "machine_learning_workspaces_friendly_name" {
  description = "Map of friendly_name values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.friendly_name }
}
output "machine_learning_workspaces_high_business_impact" {
  description = "Map of high_business_impact values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.high_business_impact }
}
output "machine_learning_workspaces_identity" {
  description = "Map of identity values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.identity }
}
output "machine_learning_workspaces_image_build_compute_name" {
  description = "Map of image_build_compute_name values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.image_build_compute_name }
}
output "machine_learning_workspaces_key_vault_id" {
  description = "Map of key_vault_id values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.key_vault_id }
}
output "machine_learning_workspaces_kind" {
  description = "Map of kind values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.kind }
}
output "machine_learning_workspaces_location" {
  description = "Map of location values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.location }
}
output "machine_learning_workspaces_managed_network" {
  description = "Map of managed_network values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.managed_network }
}
output "machine_learning_workspaces_name" {
  description = "Map of name values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.name }
}
output "machine_learning_workspaces_primary_user_assigned_identity" {
  description = "Map of primary_user_assigned_identity values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.primary_user_assigned_identity }
}
output "machine_learning_workspaces_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.public_network_access_enabled }
}
output "machine_learning_workspaces_resource_group_name" {
  description = "Map of resource_group_name values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.resource_group_name }
}
output "machine_learning_workspaces_serverless_compute" {
  description = "Map of serverless_compute values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.serverless_compute }
}
output "machine_learning_workspaces_service_side_encryption_enabled" {
  description = "Map of service_side_encryption_enabled values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.service_side_encryption_enabled }
}
output "machine_learning_workspaces_sku_name" {
  description = "Map of sku_name values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.sku_name }
}
output "machine_learning_workspaces_storage_account_access_type" {
  description = "Map of storage_account_access_type values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.storage_account_access_type }
}
output "machine_learning_workspaces_storage_account_id" {
  description = "Map of storage_account_id values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.storage_account_id }
}
output "machine_learning_workspaces_tags" {
  description = "Map of tags values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.tags }
}
output "machine_learning_workspaces_v1_legacy_mode_enabled" {
  description = "Map of v1_legacy_mode_enabled values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.v1_legacy_mode_enabled }
}
output "machine_learning_workspaces_workspace_id" {
  description = "Map of workspace_id values across all machine_learning_workspaces, keyed the same as var.machine_learning_workspaces"
  value       = { for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : k => v.workspace_id }
}

