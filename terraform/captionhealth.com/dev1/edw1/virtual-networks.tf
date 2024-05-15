module "virtual_network" {
  source = "../../../modules/terraform-azurerm-virtual-network"

  azurerm_virtual_network_params = {
    edw_main_vnet = {
      name                    = module.naming["edw_main_vnet"].virtual_network.name_unique # Required
      resource_group_name     = module.resource_group.resource_groups["edw_rg"].name       # Required
      address_space           = ["10.53.0.0/16"]                                           # Required
      location                = module.resource_group.resource_groups["edw_rg"].location   # Required
      bgp_community           = null
      ddos_protection_plan    = []
      encryption              = []
      dns_servers             = []
      edge_zone               = null
      flow_timeout_in_minutes = null
      subnet                  = []
      tags                    = module.tags.tags
    }
  }
}
