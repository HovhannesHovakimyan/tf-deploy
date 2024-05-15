output "subnet_nsg_associations" {
  description = "An object containing the Azure Subnet Network Security Group Associations created by the module."
  value       = azurerm_subnet_network_security_group_association_params.this
}
