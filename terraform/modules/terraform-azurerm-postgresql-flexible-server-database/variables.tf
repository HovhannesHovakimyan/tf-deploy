variable "azurerm_postgresql_flexible_server_database_params" {
  description = "Object map for Azure Postgresql Flexible Server Database module input parameters."

  type = map(object({
    name      = string # Required
    server_id = string # Required
    charset   = string
    collation = string
  }))
}
