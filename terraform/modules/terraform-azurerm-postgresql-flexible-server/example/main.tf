resource "random_password" "password" {
  length  = 32
  special = true
}

module "postgresql_flexible_server" {
  source  = "app.terraform.io/captionhealth/postgresql-flexible-server/azurerm"
  version = "1.0.0"

  postgresql_flexible_server_params = {
    postgresql_flexible_server_1 = {
      name                              = module.name.names["main_postgresql_flexible"].result      # Required
      resource_group_name               = module.resource_group.resource_groups["main_rg"].name     # Required
      location                          = module.resource_group.resource_groups["main_rg"].location # Required
      administrator_login               = "admin"                                                   # Required when create_mode is Default and authentication.password_auth_enabled is true
      administrator_password            = random_password.password.result                           # The value will be automatically encrypted.
      backup_retention_days             = 7
      geo_redundant_backup_enabled      = null
      create_mode                       = null
      delegated_subnet_id               = module.subnet.subnets["postgres_main_subnet"].id
      private_dns_zone_id               = module.private_dns_zone.private_dns_zones["postgres_private_dns_zone"].id
      point_in_time_restore_time_in_utc = null
      replication_role                  = null
      sku_name                          = "B_Standard_B1ms"
      source_server_id                  = null # Required when create_mode is PointInTimeRestore or Replica. Changing this forces a new PostgreSQL Flexible Server to be created.
      auto_grow_enabled                 = true
      storage_mb                        = 32768
      storage_tier                      = null
      version                           = "14" # Required when create_mode is Default
      zone                              = null
      tags                              = module.tags.tags

      authentication = [
        # {
        #   active_directory_auth_enabled = false
        #   password_auth_enabled         = true
        #   tenant_id                     = null # Required when active_directory_auth_enabled is set to true
        # }
      ]
      customer_managed_key = [
        # {
        #   key_vault_key_id                     = null # Required
        #   primary_user_assigned_identity_id    = null
        #   geo_backup_key_vault_key_id          = null
        #   geo_backup_user_assigned_identity_id = null
        # }
      ]

      high_availability = [
        # {
        #   mode                      = null # Required
        #   standby_availability_zone = null
        # }
      ]

      identity = [
        # {
        #   type         = null # Required
        #   identity_ids = null # Required if used together with customer_managed_key block.
        # }
      ]

      maintenance_window = [
        # {
        #   day_of_week  = null
        #   start_hour   = null
        #   start_minute = null
        # }
      ]
    }
  }
}
