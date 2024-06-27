# https://learn.microsoft.com/en-us/azure/private-link/private-endpoint-overview#private-link-resource

module "private_endpoint" {
  source = "../../modules/terraform-azurerm-private-endpoint"

  azurerm_private_endpoint_params = {
    # ccp_private_endpoint_main_aks = {
    #   name                          = module.naming["ccp_private_endpoint_main_aks"].private_endpoint.name_unique # Required
    #   resource_group_name           = module.resource_group.resource_groups["ccp_rg"].name                        # Required
    #   location                      = module.resource_group.resource_groups["ccp_rg"].location                    # Required
    #   subnet_id                     = module.subnet.subnets["ccp_private_endpoints_subnet"].id                    # Required
    #   custom_network_interface_name = module.naming["ccp_private_endpoint_main_aks_nic"].network_interface.name_unique
    #   tags                          = module.tags.tags

    #   private_dns_zone_group = [
    #     {
    #       name                 = "default"                                                                                        # Required
    #       private_dns_zone_ids = [module.private_dns_zone.private_dns_zones["ccp_private_dns_zone_private_endpoint_main_aks"].id] # Required
    #     }
    #   ]

    #   private_service_connection = [ # Required
    #     {
    #       name                              = module.kubernetes_cluster.kubernetes_clusters["ccp_main_aks"].name # Required
    #       is_manual_connection              = false                                                              # Required
    #       private_connection_resource_id    = module.kubernetes_cluster.kubernetes_clusters["ccp_main_aks"].id
    #       private_connection_resource_alias = null
    #       subresource_names                 = ["management"]
    #       request_message                   = null
    #     }
    #   ]

    #   ip_configuration = [
    #     # {
    #     #   name               = "ipconfig1"    # Required
    #     #   private_ip_address = "192.168.24.5" # Required
    #     #   subresource_name   = null
    #     #   member_name        = null
    #     # }
    #   ]
    # }
    # ccp_private_endpoint_blob = {
    #   name                          = module.naming["ccp_private_endpoint_blob"].private_endpoint.name_unique # Required
    #   resource_group_name           = module.resource_group.resource_groups["ccp_rg"].name                    # Required
    #   location                      = module.resource_group.resource_groups["ccp_rg"].location                # Required
    #   subnet_id                     = module.subnet.subnets["ccp_private_endpoints_subnet"].id                # Required
    #   custom_network_interface_name = module.naming["ccp_private_endpoint_blob_nic"].network_interface.name_unique
    #   tags                          = module.tags.tags

    #   private_dns_zone_group = [
    #     {
    #       name                 = "default"                                                                                    # Required
    #       private_dns_zone_ids = [module.private_dns_zone.private_dns_zones["ccp_private_dns_zone_private_endpoint_blob"].id] # Required
    #     }
    #   ]

    #   private_service_connection = [ # Required
    #     {
    #       name                              = module.storage_account.storage_accounts["ccp_storage_account"].name # Required
    #       is_manual_connection              = false                                                               # Required
    #       private_connection_resource_id    = module.storage_account.storage_accounts["ccp_storage_account"].id
    #       private_connection_resource_alias = null
    #       subresource_names                 = ["blob"]
    #       request_message                   = null
    #     }
    #   ]

    #   ip_configuration = [
    #     # {
    #     #   name               = "ipconfig1"    # Required
    #     #   private_ip_address = "192.168.24.5" # Required
    #     #   subresource_name   = null
    #     #   member_name        = null
    #     # }
    #   ]
    # }
    # ccp_private_endpoint_key_vault = {
    #   name                          = module.naming["ccp_private_endpoint_key_vault"].private_endpoint.name_unique # Required
    #   resource_group_name           = module.resource_group.resource_groups["ccp_rg"].name                         # Required
    #   location                      = module.resource_group.resource_groups["ccp_rg"].location                     # Required
    #   subnet_id                     = module.subnet.subnets["ccp_private_endpoints_subnet"].id                     # Required
    #   custom_network_interface_name = module.naming["ccp_private_endpoint_key_vault_nic"].network_interface.name_unique
    #   tags                          = module.tags.tags

    #   private_dns_zone_group = [
    #     {
    #       name                 = "default"                                                                                         # Required
    #       private_dns_zone_ids = [module.private_dns_zone.private_dns_zones["ccp_private_dns_zone_private_endpoint_key_vault"].id] # Required
    #     }
    #   ]

    #   private_service_connection = [ # Required
    #     {
    #       name                              = module.key_vault.key_vaults["ccp_key_vault"].name # Required
    #       is_manual_connection              = false                                             # Required
    #       private_connection_resource_id    = module.key_vault.key_vaults["ccp_key_vault"].id
    #       private_connection_resource_alias = null
    #       subresource_names                 = ["vault"]
    #       request_message                   = null
    #     }
    #   ]

    #   ip_configuration = [
    #     # {
    #     #   name               = "ipconfig1"    # Required
    #     #   private_ip_address = "192.168.24.5" # Required
    #     #   subresource_name   = null
    #     #   member_name        = null
    #     # }
    #   ]
    # }
  }
}
