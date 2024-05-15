resource "azurerm_subnet_network_security_group_association" "this" {
  for_each = var.azurerm_subnet_network_security_group_association_params

  network_security_group_id = each.value.network_security_group_id # Required
  subnet_id                 = each.value.subnet_id                 # Required
}
