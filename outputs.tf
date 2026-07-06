output "machine_learning_workspaces" {
  description = "All machine_learning_workspace resources"
  value       = azurerm_machine_learning_workspace.machine_learning_workspaces
}
output "machine_learning_workspaces_application_insights_id" {
  description = "List of application_insights_id values across all machine_learning_workspaces"
  value       = [for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : v.application_insights_id]
}
output "machine_learning_workspaces_container_registry_id" {
  description = "List of container_registry_id values across all machine_learning_workspaces"
  value       = [for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : v.container_registry_id]
}
output "machine_learning_workspaces_description" {
  description = "List of description values across all machine_learning_workspaces"
  value       = [for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : v.description]
}
output "machine_learning_workspaces_discovery_url" {
  description = "List of discovery_url values across all machine_learning_workspaces"
  value       = [for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : v.discovery_url]
}
output "machine_learning_workspaces_encryption" {
  description = "List of encryption values across all machine_learning_workspaces"
  value       = [for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : v.encryption]
}
output "machine_learning_workspaces_feature_store" {
  description = "List of feature_store values across all machine_learning_workspaces"
  value       = [for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : v.feature_store]
}
output "machine_learning_workspaces_friendly_name" {
  description = "List of friendly_name values across all machine_learning_workspaces"
  value       = [for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : v.friendly_name]
}
output "machine_learning_workspaces_high_business_impact" {
  description = "List of high_business_impact values across all machine_learning_workspaces"
  value       = [for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : v.high_business_impact]
}
output "machine_learning_workspaces_identity" {
  description = "List of identity values across all machine_learning_workspaces"
  value       = [for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : v.identity]
}
output "machine_learning_workspaces_image_build_compute_name" {
  description = "List of image_build_compute_name values across all machine_learning_workspaces"
  value       = [for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : v.image_build_compute_name]
}
output "machine_learning_workspaces_key_vault_id" {
  description = "List of key_vault_id values across all machine_learning_workspaces"
  value       = [for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : v.key_vault_id]
}
output "machine_learning_workspaces_kind" {
  description = "List of kind values across all machine_learning_workspaces"
  value       = [for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : v.kind]
}
output "machine_learning_workspaces_location" {
  description = "List of location values across all machine_learning_workspaces"
  value       = [for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : v.location]
}
output "machine_learning_workspaces_managed_network" {
  description = "List of managed_network values across all machine_learning_workspaces"
  value       = [for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : v.managed_network]
}
output "machine_learning_workspaces_name" {
  description = "List of name values across all machine_learning_workspaces"
  value       = [for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : v.name]
}
output "machine_learning_workspaces_primary_user_assigned_identity" {
  description = "List of primary_user_assigned_identity values across all machine_learning_workspaces"
  value       = [for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : v.primary_user_assigned_identity]
}
output "machine_learning_workspaces_public_network_access_enabled" {
  description = "List of public_network_access_enabled values across all machine_learning_workspaces"
  value       = [for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : v.public_network_access_enabled]
}
output "machine_learning_workspaces_resource_group_name" {
  description = "List of resource_group_name values across all machine_learning_workspaces"
  value       = [for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : v.resource_group_name]
}
output "machine_learning_workspaces_serverless_compute" {
  description = "List of serverless_compute values across all machine_learning_workspaces"
  value       = [for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : v.serverless_compute]
}
output "machine_learning_workspaces_service_side_encryption_enabled" {
  description = "List of service_side_encryption_enabled values across all machine_learning_workspaces"
  value       = [for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : v.service_side_encryption_enabled]
}
output "machine_learning_workspaces_sku_name" {
  description = "List of sku_name values across all machine_learning_workspaces"
  value       = [for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : v.sku_name]
}
output "machine_learning_workspaces_storage_account_access_type" {
  description = "List of storage_account_access_type values across all machine_learning_workspaces"
  value       = [for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : v.storage_account_access_type]
}
output "machine_learning_workspaces_storage_account_id" {
  description = "List of storage_account_id values across all machine_learning_workspaces"
  value       = [for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : v.storage_account_id]
}
output "machine_learning_workspaces_tags" {
  description = "List of tags values across all machine_learning_workspaces"
  value       = [for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : v.tags]
}
output "machine_learning_workspaces_v1_legacy_mode_enabled" {
  description = "List of v1_legacy_mode_enabled values across all machine_learning_workspaces"
  value       = [for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : v.v1_legacy_mode_enabled]
}
output "machine_learning_workspaces_workspace_id" {
  description = "List of workspace_id values across all machine_learning_workspaces"
  value       = [for k, v in azurerm_machine_learning_workspace.machine_learning_workspaces : v.workspace_id]
}

