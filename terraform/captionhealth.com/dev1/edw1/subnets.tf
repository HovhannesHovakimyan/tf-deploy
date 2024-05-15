module "subnet" {
  source = "../../../modules/terraform-azurerm-subnet"

  azurerm_subnet_params = {
    # edw_linux_subnet = {
    #   name                                          = module.naming["edw_linux_subnet"].storage_container.name_unique # Required
    #   resource_group_name                           = module.resource_group.resource_groups["edw_rg"].name            # Required
    #   virtual_network_name                          = module.virtual_network.virtual_networks["edw_main_vnet"].name   # Required
    #   address_prefixes                              = ["10.53.132.112/28"]                                            # Required
    #   private_endpoint_network_policies_enabled     = null
    #   private_link_service_network_policies_enabled = null
    #   service_endpoints                             = null
    #   service_endpoint_policy_ids                   = null

    #   delegation = [
    #     {
    #       name = "delegation"
    #       service_delegation = [
    #         {
    #           name = "Microsoft.Web/serverFarms"
    #           actions = [
    #             "Microsoft.Network/virtualNetworks/subnets/action"
    #           ]
    #         }
    #       ]
    #     }
    #   ]
    # }
    # edw_postgres_subnet = {
    #   name                                          = module.naming["edw_postgres_subnet"].storage_container.name_unique # Required
    #   resource_group_name                           = module.resource_group.resource_groups["edw_rg"].name               # Required
    #   virtual_network_name                          = module.virtual_network.virtual_networks["edw_main_vnet"].name      # Required
    #   address_prefixes                              = ["10.53.133.112/28"]                                               # Required
    #   private_endpoint_network_policies_enabled     = null
    #   private_link_service_network_policies_enabled = null
    #   service_endpoints                             = ["Microsoft.Storage", "Microsoft.KeyVault"]
    #   service_endpoint_policy_ids                   = null

    #   delegation = [
    #     {
    #       name = "delegation"
    #       service_delegation = [
    #         {
    #           name = "Microsoft.DBforPostgreSQL/flexibleServers"
    #           actions = [
    #             "Microsoft.Network/virtualNetworks/subnets/join/action"
    #           ]
    #         }
    #       ]
    #     }
    #   ]
    # }
    # edw_powrebi_subnet = {
    #   name                                          = module.naming["edw_powrebi_subnet"].storage_container.name_unique # Required
    #   resource_group_name                           = module.resource_group.resource_groups["edw_rg"].name              # Required
    #   virtual_network_name                          = module.virtual_network.virtual_networks["edw_main_vnet"].name     # Required
    #   address_prefixes                              = ["10.53.134.112/28"]                                              # Required
    #   private_endpoint_network_policies_enabled     = null
    #   private_link_service_network_policies_enabled = null
    #   service_endpoints                             = ["Microsoft.Storage", "Microsoft.KeyVault"]
    #   service_endpoint_policy_ids                   = null

    #   delegation = [
    #     {
    #       name = "delegation"
    #       service_delegation = [
    #         {
    #           name = "Microsoft.PowerPlatform/vnetaccesslinks"
    #           actions = [
    #             "Microsoft.Network/virtualNetworks/subnets/join/action"
    #           ]
    #         }
    #       ]
    #     }
    #   ]
    # }
    # edw_private_endpoints_subnet = {
    #   name                                          = module.naming["edw_private_endpoints_subnet"].storage_container.name_unique # Required
    #   resource_group_name                           = module.resource_group.resource_groups["edw_rg"].name                        # Required
    #   virtual_network_name                          = module.virtual_network.virtual_networks["edw_main_vnet"].name               # Required
    #   address_prefixes                              = ["10.53.135.112/28"]                                                        # Required
    #   private_endpoint_network_policies_enabled     = null
    #   private_link_service_network_policies_enabled = null
    #   service_endpoints                             = null
    #   service_endpoint_policy_ids                   = null

    #   delegation = []
    # }
  }
}
