output "postgresql_flexible_server_active_directory_administrator" {
  description = "An object containing the Azure Postgresql Flexible Server Active Directory Administrators created by the module."
  value       = module.postgresql_flexible_server_active_directory_administrator.postgresql_flexible_server_active_directory_administrators
}
