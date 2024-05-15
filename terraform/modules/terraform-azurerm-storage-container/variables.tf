variable "azurerm_storage_container_params" {
  description = "Object map for Azure Storage Container module input parameters."
  type = map(object({
    name                  = string # Required
    storage_account_name  = string # Required
    container_access_type = string
    metadata              = map(string)
  }))
}
