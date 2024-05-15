resource "azurerm_virtual_network" "this" {
  for_each = var.azurerm_virtual_network_params

  name                = each.value.name                # Required
  resource_group_name = each.value.resource_group_name # Required
  address_space       = each.value.address_space       # Required
  location            = each.value.location            # Required
  bgp_community       = each.value.bgp_community

  dynamic "ddos_protection_plan" {
    iterator = dpp
    for_each = each.value.ddos_protection_plan

    content {
      id     = dpp.value.id     # Required
      enable = dpp.value.enable # Required
    }
  }

  dynamic "encryption" {
    iterator = enc
    for_each = each.value.encryption

    content {
      enforcement = enc.value.enforcement # Required
    }
  }

  dns_servers             = each.value.dns_servers # [] to remove it
  edge_zone               = each.value.edge_zone
  flow_timeout_in_minutes = each.value.flow_timeout_in_minutes

  dynamic "subnet" {
    iterator = subnet
    for_each = each.value.subnet

    content {
      name           = subnet.value.name           # Required
      address_prefix = subnet.value.address_prefix # Required
      security_group = subnet.value.security_group
    }
  }

  tags = each.value.tags
}
