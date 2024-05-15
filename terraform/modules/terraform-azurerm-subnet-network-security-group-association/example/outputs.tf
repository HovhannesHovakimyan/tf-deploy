output "subnet_nsg_associations" {
  description = "An object containing the Azure Subnet Network Security Group Associations created by the module."
  value       = module.subnet_nsg_association.subnet_nsg_associations
}
