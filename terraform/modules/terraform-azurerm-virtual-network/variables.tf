variable "azurerm_virtual_network_params" {
  description = "Object map for Azure Virtual Network module input parameters."
  type = map(object({
    name                = string       # Required
    resource_group_name = string       # Required
    address_space       = list(string) # Required
    location            = string       # Required
    bgp_community       = string
    ddos_protection_plan = list(object({
      id     = string
      enable = bool
    }))
    encryption = list(object({
      enforcement = bool # Required
    }))
    dns_servers             = list(string)
    edge_zone               = string
    flow_timeout_in_minutes = number
    subnet = list(object({
      name           = string # Required
      address_prefix = string # Required
      security_group = string
    }))
    tags = map(string)
  }))
}
