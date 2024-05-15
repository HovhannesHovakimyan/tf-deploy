variable "postgresql_flexible_server_params" {
  description = "Object map for Azure Postgresql Flexible Server module input parameters."

  type = map(object({
    name                              = string # Required
    resource_group_name               = string # Required
    location                          = string # Required
    administrator_login               = string # Required when create_mode is Default and authentication.password_auth_enabled is true
    administrator_password            = string # The value will be automatically encrypted.
    backup_retention_days             = number
    geo_redundant_backup_enabled      = bool
    create_mode                       = string
    delegated_subnet_id               = string
    private_dns_zone_id               = string
    point_in_time_restore_time_in_utc = string
    replication_role                  = string
    sku_name                          = string
    source_server_id                  = string # Required when create_mode is PointInTimeRestore or Replica. Changing this forces a new PostgreSQL Flexible Server to be created.
    auto_grow_enabled                 = bool
    storage_mb                        = number
    storage_tier                      = string
    version                           = string # Required when create_mode is Default
    zone                              = string
    tags                              = map(string)

    authentication = list(object({
      active_directory_auth_enabled = bool
      password_auth_enabled         = bool
      tenant_id                     = string # Required when active_directory_auth_enabled is set to true
    }))

    customer_managed_key = list(object({
      key_vault_key_id                     = string # Required
      primary_user_assigned_identity_id    = string
      geo_backup_key_vault_key_id          = string
      geo_backup_user_assigned_identity_id = string

    }))

    high_availability = list(object({
      mode                      = string # Required
      standby_availability_zone = string
    }))

    identity = list(object({
      type         = string      # Required
      identity_ids = set(string) # Required if used together with customer_managed_key block.
    }))

    maintenance_window = list(object({
      day_of_week  = number
      start_hour   = number
      start_minute = number
    }))
  }))
}
