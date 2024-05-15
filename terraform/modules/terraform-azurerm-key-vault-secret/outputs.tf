output "key_vault_secrets" {
  description = "An object containing the Key Vault Secrets created by the module."
  value       = azurerm_key_vault_secret.this
}
