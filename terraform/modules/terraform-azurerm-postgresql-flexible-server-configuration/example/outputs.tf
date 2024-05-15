output "postgresql_flexible_server_configurations" {
  description = "An object containing the Azure Postgresql Flexible Server Configurations created by the module."
  value       = module.postgresql_flexible_server_configuration.postgresql_flexible_server_configurations
}
