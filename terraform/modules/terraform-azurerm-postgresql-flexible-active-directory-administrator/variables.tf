variable "azurerm_postgresql_flexible_server_active_directory_administrator_params" {
  description = "Object map for Azure Postgresql Flexible Server Active Directory Administrator module input parameters."

  type = map(object({
    server_name         = string # Required
    resource_group_name = string # Required
    object_id           = string # Required
    tenant_id           = string # Required
    principal_name      = string # Required
    principal_type      = string # Required
  }))
}
