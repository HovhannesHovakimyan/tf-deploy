output "key_vault_secrets" {
  description = "An object containing the Key Vault Secrets created by the module."
  value       = module.key_vault_secret.key_vault_secrets
}
