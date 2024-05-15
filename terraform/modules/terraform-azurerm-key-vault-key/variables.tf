variable "azurerm_key_vault_key_params" {
  description = "Object map for Azure Key Vault Key module input parameters."
  type = map(object({
    name            = string # Required
    key_vault_id    = string # Required
    key_type        = string # Required
    key_size        = number
    curve           = string
    key_opts        = list(string) # Required
    not_before_date = string
    expiration_date = string
    tags            = map(string)

    rotation_policy = list(object({
      expire_after         = string
      notify_before_expiry = string
      automatic = list(object({
        time_after_creation = string
        time_before_expiry  = string
      }))
    }))
  }))
}
