output "user_assigned_identities" {
  description = "An object containing the Azure User Assigned Identities created by the module."
  value       = module.user_assigned_identity.user_assigned_identities
}
