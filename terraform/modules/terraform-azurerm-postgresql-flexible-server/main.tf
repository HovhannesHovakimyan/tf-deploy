resource "azurerm_postgresql_flexible_server" "this" {
  for_each = var.postgresql_flexible_server_params

  name                              = each.value.name                              # Required
  resource_group_name               = each.value.resource_group_name               # Required
  location                          = each.value.location                          # Required
  administrator_login               = each.value.administrator_login               # Required when create_mode is Default and authentication.password_auth_enabled is true
  administrator_password            = sensitive(each.value.administrator_password) # The value will be automatically encrypted.
  backup_retention_days             = each.value.backup_retention_days
  geo_redundant_backup_enabled      = each.value.geo_redundant_backup_enabled
  create_mode                       = each.value.create_mode
  delegated_subnet_id               = each.value.delegated_subnet_id
  private_dns_zone_id               = each.value.private_dns_zone_id
  point_in_time_restore_time_in_utc = each.value.point_in_time_restore_time_in_utc
  replication_role                  = each.value.replication_role
  sku_name                          = each.value.sku_name
  source_server_id                  = each.value.source_server_id # Required when create_mode is PointInTimeRestore or Replica. Changing this forces a new PostgreSQL Flexible Server to be created.
  auto_grow_enabled                 = each.value.auto_grow_enabled
  storage_mb                        = each.value.storage_mb
  storage_tier                      = each.value.storage_tier
  version                           = each.value.version # Required when create_mode is Default
  zone                              = each.value.zone
  tags                              = each.value.tags

  dynamic "authentication" {
    iterator = a
    for_each = each.value.authentication

    content {
      active_directory_auth_enabled = a.value.active_directory_auth_enabled
      password_auth_enabled         = a.value.password_auth_enabled
      tenant_id                     = a.value.tenant_id # Required when active_directory_auth_enabled is set to true
    }
  }

  dynamic "customer_managed_key" {
    iterator = cmk
    for_each = each.value.customer_managed_key

    content {
      key_vault_key_id                     = cmk.value.key_vault_key_id # Required
      primary_user_assigned_identity_id    = cmk.value.primary_user_assigned_identity_id
      geo_backup_key_vault_key_id          = cmk.value.geo_backup_key_vault_key_id
      geo_backup_user_assigned_identity_id = cmk.value.geo_backup_user_assigned_identity_id
    }
  }

  dynamic "high_availability" {
    iterator = ha
    for_each = each.value.high_availability

    content {
      mode                      = ha.value.mode # Required
      standby_availability_zone = ha.value.standby_availability_zone
    }
  }

  dynamic "identity" {
    iterator = i # Required
    for_each = each.value.identity

    content {
      type         = i.value.type         # Required
      identity_ids = i.value.identity_ids # Required if used together with customer_managed_key block.
    }
  }

  dynamic "maintenance_window" {
    iterator = mw
    for_each = each.value.maintenance_window

    content {
      day_of_week  = mw.value.day_of_week
      start_hour   = mw.value.start_hour
      start_minute = mw.value.start_minute
    }
  }
}
