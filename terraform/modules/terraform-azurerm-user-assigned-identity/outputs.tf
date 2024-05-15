output "user_assigned_identities" {
  description = "An object containing the Azure User Assigned Identities created by the module."
  value       = azurerm_user_assigned_identity.this
}
