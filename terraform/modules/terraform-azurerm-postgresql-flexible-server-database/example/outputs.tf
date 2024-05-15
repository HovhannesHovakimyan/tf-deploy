output "postgresql_flexible_server_databases" {
  description = "An object containing the Azure Postgresql Flexible Server Databases created by the module."
  value       = module.postgresql_flexible_server_database.postgresql_flexible_server_databases
}
