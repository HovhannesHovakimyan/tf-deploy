output "role_assignments" {
  description = "An object containing the Azure Role Assignments created by the module."
  value       = azurerm_role_assignment.this
}
