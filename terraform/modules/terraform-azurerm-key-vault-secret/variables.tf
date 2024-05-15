variable "azurerm_key_vault_secret_params" {
  description = "Object map for Azure Key Vault Secret module input parameters."
  type = map(object({
    name            = string # Required
    value           = string # Required, the value will be automatically encrypted.
    key_vault_id    = string # Required
    content_type    = string
    not_before_date = string
    expiration_date = string
    tags            = map(string)
  }))
}
