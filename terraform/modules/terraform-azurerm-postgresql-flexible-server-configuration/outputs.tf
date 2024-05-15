output "postgresql_flexible_server_configurations" {
  description = "An object containing the Azure Postgresql Flexible Server Configurations created by the module."
  value       = azurerm_postgresql_flexible_server_configuration.this
}
