output "tags" {
  description = "Tags created for resources"
  value       = module.tags.tags
}

output "resource_groups" {
  description = "All created resource groups"
  value       = module.resource_group.resource_groups
}

output "kubernetes_clusters" {
  description = "An object containing the Kubernetes Clusters created by the module."
  sensitive   = true
  value       = module.kubernetes_cluster.kubernetes_clusters
}

output "private_dns_zones" {
  description = "An object containing the Private DNS Zones created by the module."
  value       = module.private_dns_zone.private_dns_zones
}

output "virtual_networks" {
  description = "An object containing the Virtual Networks created by the module."
  value       = module.virtual_network.virtual_networks
}

output "subnets" {
  description = "An object containing the Azure Subnets created by the module."
  value       = module.subnet.subnets
}

output "storage_accounts" {
  description = "An object containing the Storage Accounts created by the module."
  sensitive   = true
  value       = module.storage_account.storage_accounts
}

output "storage_containers" {
  description = "An object containing the Storage Containers created by the module."
  sensitive   = true
  value       = module.storage_container.storage_containers
}

output "blob_storages" {
  description = "An object containing the Blob Storages created by the module."
  sensitive   = true
  value       = module.blob_storage.blob_storages
}

output "key_vaults" {
  description = "An object containing the Key Vaults created by the module."
  value       = module.key_vault.key_vaults
}

output "key_vault_secrets" {
  description = "An object containing the Key Vault Secrets created by the module."
  sensitive   = true
  value       = module.key_vault_secret.key_vault_secrets
}

output "postgresql_flexible_servers" {
  description = "An object containing the Azure Postgresql Flexible Servers created by the module."
  sensitive   = true
  value       = module.postgresql_flexible_server.postgresql_flexible_servers
}

output "postgresql_flexible_server_databases" {
  description = "An object containing the Azure Postgresql Flexible Server Databases created by the module."
  value       = module.postgresql_flexible_server_database.postgresql_flexible_server_databases
}

output "private_endpoints" {
  description = "An object containing the Azure Private Endpoints created by the module."
  sensitive   = true
  value       = module.private_endpoint.private_endpoints
}
