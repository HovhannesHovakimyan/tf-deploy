output "postgresql_flexible_servers" {
  description = "An object containing the Azure Postgresql Flexible Servers created by the module."
  value       = azurerm_postgresql_flexible_server.this
  sensitive   = true
}
