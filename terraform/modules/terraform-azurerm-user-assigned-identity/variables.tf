variable "azurerm_user_assigned_identity_params" {
  description = "Object map for Azure User Assigned Identity module input parameters."
  type = map(object({
    location            = string # Required
    name                = string # Required
    resource_group_name = string # Required
    tags                = map(string)
  }))
}
