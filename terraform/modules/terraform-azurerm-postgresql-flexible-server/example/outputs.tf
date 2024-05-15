output "postgresql_flexible_servers" {
  description = "An object containing the Azure Postgresql Flexible Servers created by the module."
  value       = module.postgresql_flexible_server.postgresql_flexible_servers
  sensitive   = true
}
