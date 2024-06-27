module "private_endpoint" {
  source = "../../modules/terraform-azurerm-private-endpoint"

  azurerm_private_endpoint_params = {
    # edw_private_endpoint_blob = {
    #   name                          = module.naming["edw_private_endpoint_blob"].private_endpoint.name_unique # Required
    #   resource_group_name           = module.resource_group.resource_groups["edw_rg"].name                    # Required
    #   location                      = module.resource_group.resource_groups["edw_rg"].location                # Required
    #   subnet_id                     = module.subnet.subnets["edw_private_endpoints_subnet"].id                # Required
    #   custom_network_interface_name = module.naming["edw_private_endpoint_blob_nic"].network_interface.name_unique
    #   tags                          = module.tags.tags

    #   private_dns_zone_group = [
    #     {
    #       name                 = "default"                                                                                    # Required
    #       private_dns_zone_ids = [module.private_dns_zone.private_dns_zones["edw_private_dns_zone_private_endpoint_blob"].id] # Required
    #     }
    #   ]

    #   private_service_connection = [ # Required
    #     {
    #       name                              = module.storage_account.storage_accounts["edw_storage_account"].name # Required
    #       is_manual_connection              = false                                                               # Required
    #       private_connection_resource_id    = module.storage_account.storage_accounts["edw_storage_account"].id
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
    # edw_private_endpoint_key_vault = {
    #   name                          = module.naming["edw_private_endpoint_key_vault"].private_endpoint.name_unique # Required
    #   resource_group_name           = module.resource_group.resource_groups["edw_rg"].name                         # Required
    #   location                      = module.resource_group.resource_groups["edw_rg"].location                     # Required
    #   subnet_id                     = module.subnet.subnets["edw_private_endpoints_subnet"].id                     # Required
    #   custom_network_interface_name = module.naming["edw_private_endpoint_key_vault_nic"].network_interface.name_unique
    #   tags                          = module.tags.tags

    #   private_dns_zone_group = [
    #     {
    #       name                 = "default"                                                                                         # Required
    #       private_dns_zone_ids = [module.private_dns_zone.private_dns_zones["edw_private_dns_zone_private_endpoint_key_vault"].id] # Required
    #     }
    #   ]

    #   private_service_connection = [ # Required
    #     {
    #       name                              = module.key_vault.key_vaults["edw_key_vault"].name # Required
    #       is_manual_connection              = false                                             # Required
    #       private_connection_resource_id    = module.key_vault.key_vaults["edw_key_vault"].id
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
