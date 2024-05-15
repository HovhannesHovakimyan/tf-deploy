variable "azurerm_subnet_network_security_group_association_params" {
  description = "Object map for Azure Subnet Network Security Group Association module input parameters."
  type = map(object({
    network_security_group_id = string # Required
    subnet_id                 = string # Required
  }))
}
