variable "azurerm_postgresql_flexible_server_configuration_params" {
  description = "Object map for Azure Postgresql Flexible Server Configuration module input parameters."

  type = map(object({
    name      = string # Required
    server_id = string # Required
    value     = string # Required
  }))
}
