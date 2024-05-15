output "azurerm_key_vault_keys" {
  description = "An object containing the Key Vault Keys created by the module."
  value       = module.azurerm_key_vault_key.azurerm_key_vault_keys
}
