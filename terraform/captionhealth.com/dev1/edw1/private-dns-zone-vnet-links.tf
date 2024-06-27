module "private_dns_zone_virtual_network_link" {
  source = "../../modules/terraform-azurerm-private-dns-virtual-network-link"

  azurerm_private_dns_zone_virtual_network_link_params = {
    # edw_private_dns_zone_virtual_network_link_postgres = {
    #   name                  = format("%s-%s", module.virtual_network.virtual_networks["edw_main_vnet"].name, "link")           # Required
    #   private_dns_zone_name = module.private_dns_zone.private_dns_zones["edw_private_dns_zone_private_endpoint_postgres"].name # Required
    #   resource_group_name   = module.resource_group.resource_groups["edw_rg"].name                                             # Required
    #   virtual_network_id    = module.virtual_network.virtual_networks["edw_main_vnet"].id                                      # Required
    #   registration_enabled  = null
    #   tags                  = module.tags.tags
    # }
    # edw_private_dns_zone_virtual_network_link_blob = {
    #   name                  = format("%s-%s", module.virtual_network.virtual_networks["edw_main_vnet"].name, "link")       # Required
    #   private_dns_zone_name = module.private_dns_zone.private_dns_zones["edw_private_dns_zone_private_endpoint_blob"].name # Required
    #   resource_group_name   = module.resource_group.resource_groups["edw_rg"].name                                         # Required
    #   virtual_network_id    = module.virtual_network.virtual_networks["edw_main_vnet"].id                                  # Required
    #   registration_enabled  = null
    #   tags                  = module.tags.tags
    # }
    # edw_private_dns_zone_virtual_network_link_key_vault = {
    #   name                  = format("%s-%s", module.virtual_network.virtual_networks["edw_main_vnet"].name, "link")            # Required
    #   private_dns_zone_name = module.private_dns_zone.private_dns_zones["edw_private_dns_zone_private_endpoint_key_vault"].name # Required
    #   resource_group_name   = module.resource_group.resource_groups["edw_rg"].name                                              # Required
    #   virtual_network_id    = module.virtual_network.virtual_networks["edw_main_vnet"].id                                       # Required
    #   registration_enabled  = null
    #   tags                  = module.tags.tags
    # }
  }
}
