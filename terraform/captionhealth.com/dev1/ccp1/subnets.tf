module "subnet" {
  source = "../../modules/terraform-azurerm-subnet"

  azurerm_subnet_params = {
    # ccp_aks_pods_subnet = {
    #   name                                          = module.naming["ccp_aks_pods_subnet"].subnet.name_unique       # Required
    #   resource_group_name                           = module.resource_group.resource_groups["ccp_rg"].name          # Required
    #   virtual_network_name                          = module.virtual_network.virtual_networks["ccp_main_vnet"].name # Required
    #   address_prefixes                              = ["10.52.0.0/17"]                                              # Required
    #   private_endpoint_network_policies_enabled     = null
    #   private_link_service_network_policies_enabled = null
    #   service_endpoints                             = null
    #   service_endpoint_policy_ids                   = null

    #   delegation = [
    #     {
    #       name = "Microsoft.ContainerService.managedClusters"
    #       service_delegation = [
    #         {
    #           name = "Microsoft.ContainerService/managedClusters"
    #           actions = [
    #             "Microsoft.Network/virtualNetworks/subnets/join/action"
    #           ]
    #         }
    #       ]
    #     }
    #   ]
    # }
    # ccp_aks_nodes_subnet = {
    #   name                                          = module.naming["ccp_aks_nodes_subnet"].subnet.name_unique      # Required
    #   resource_group_name                           = module.resource_group.resource_groups["ccp_rg"].name          # Required
    #   virtual_network_name                          = module.virtual_network.virtual_networks["ccp_main_vnet"].name # Required
    #   address_prefixes                              = ["10.52.128.0/23"]                                            # Required
    #   private_endpoint_network_policies_enabled     = null
    #   private_link_service_network_policies_enabled = null
    #   service_endpoints                             = null
    #   service_endpoint_policy_ids                   = null

    #   delegation = []
    # }
    # ccp_private_endpoints_subnet = {
    #   name                                          = module.naming["ccp_private_endpoints_subnet"].subnet.name_unique # Required
    #   resource_group_name                           = module.resource_group.resource_groups["ccp_rg"].name             # Required
    #   virtual_network_name                          = module.virtual_network.virtual_networks["ccp_main_vnet"].name    # Required
    #   address_prefixes                              = ["10.52.130.0/24"]                                               # Required
    #   private_endpoint_network_policies_enabled     = null
    #   private_link_service_network_policies_enabled = null
    #   service_endpoints                             = null
    #   service_endpoint_policy_ids                   = null

    #   delegation = []
    # }
    # ccp_postgres_subnet = {
    #   name                                          = module.naming["ccp_postgres_subnet"].subnet.name_unique       # Required
    #   resource_group_name                           = module.resource_group.resource_groups["ccp_rg"].name          # Required
    #   virtual_network_name                          = module.virtual_network.virtual_networks["ccp_main_vnet"].name # Required
    #   address_prefixes                              = ["10.52.131.0/24"]                                            # Required
    #   private_endpoint_network_policies_enabled     = null
    #   private_link_service_network_policies_enabled = null
    #   service_endpoints                             = null
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
  }
}
