module "virtual_network" {
  source  = "app.terraform.io/captionhealth/virtual-network/azurerm"
  version = "1.0.0"

  azurerm_virtual_network_params = {
    vnet1 = {
      name                = module.name.names["main_vnet"].result                     # Required
      resource_group_name = module.resource_group.resource_groups["main_rg"].name     # Required
      address_space       = ["10.0.0.0/16"]                                           # Required
      location            = module.resource_group.resource_groups["main_rg"].location # Required
      bgp_community       = null
      ddos_protection_plan = [
        # {
        #   id     = null
        #   enable = null
        # }
      ]

      encryption = [
        # {
        #   enforcement = null # Required
        # }
      ]
      dns_servers             = []
      edge_zone               = null
      flow_timeout_in_minutes = null
      subnet = [
        # {
        #   name           = "subnet1"     # Required
        #   address_prefix = "10.0.1.0/24" # Required
        #   security_group = null
        # },
        # {
        #   name           = "subnet2"     # Required
        #   address_prefix = "10.0.2.0/24" # Required
        #   security_group = null
        # }
      ]

      tags = module.tags.tags
    }
  }
}
