module "postgresql_flexible_server" {
  source = "../../../modules/terraform-azurerm-postgresql-flexible-server"

  postgresql_flexible_server_params = {
    # edw_postgresql_flexible = {
    #   name                              = module.naming["edw_postgres_flexible_server"].postgresql_server.name_unique # Required
    #   resource_group_name               = module.resource_group.resource_groups["edw_rg"].name                        # Required
    #   location                          = module.resource_group.resource_groups["edw_rg"].location                    # Required
    #   administrator_login               = "adminedw"
    #   administrator_password            = module.key_vault_secret.key_vault_secrets["edw_postgres_secret"].value
    #   backup_retention_days             = 7
    #   geo_redundant_backup_enabled      = null
    #   create_mode                       = null
    #   delegated_subnet_id               = module.subnet.subnets["edw_postgres_subnet"].id
    #   private_dns_zone_id               = module.private_dns_zone.private_dns_zones["edw_private_dns_zone_private_endpoint_postgres"].id
    #   point_in_time_restore_time_in_utc = null
    #   replication_role                  = null
    #   sku_name                          = "B_Standard_B1ms"
    #   source_server_id                  = null
    #   auto_grow_enabled                 = true
    #   storage_mb                        = 32768
    #   storage_tier                      = null
    #   version                           = "16"
    #   zone                              = 1
    #   tags                              = module.tags.tags

    #   authentication = [
    #     {
    #       active_directory_auth_enabled = false
    #       password_auth_enabled         = true
    #       tenant_id                     = null
    #     }
    #   ]

    #   customer_managed_key = []
    #   high_availability    = []
    #   identity             = []
    #   maintenance_window   = []

    #   depends_on = [
    #     module.private_dns_zone_virtual_network_link.private_dns_zone_virtual_network_links["edw_private_dns_zone_virtual_network_link_postgres"]
    #   ]
    # }
  }
}
