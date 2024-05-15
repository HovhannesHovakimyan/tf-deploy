output "postgresql_flexible_server_databases" {
  description = "An object containing the Azure Postgresql Flexible Server Databases created by the module."
  value       = azurerm_postgresql_flexible_server_database.this
}
