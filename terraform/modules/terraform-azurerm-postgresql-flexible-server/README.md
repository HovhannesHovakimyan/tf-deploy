<!-- BEGIN_TF_DOCS -->
<!-- markdown-table-prettify-ignore-start -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_postgresql_flexible_server.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/postgresql_flexible_server) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_postgresql_flexible_server_params"></a> [postgresql\_flexible\_server\_params](#input\_postgresql\_flexible\_server\_params) | Object map for Azure Postgresql Flexible Server module input parameters. | <pre>map(object({<br>    name                              = string # Required<br>    resource_group_name               = string # Required<br>    location                          = string # Required<br>    administrator_login               = string # Required when create_mode is Default and authentication.password_auth_enabled is true<br>    administrator_password            = string # The value will be automatically encrypted.<br>    backup_retention_days             = number<br>    geo_redundant_backup_enabled      = bool<br>    create_mode                       = string<br>    delegated_subnet_id               = string<br>    private_dns_zone_id               = string<br>    point_in_time_restore_time_in_utc = string<br>    replication_role                  = string<br>    sku_name                          = string<br>    source_server_id                  = string # Required when create_mode is PointInTimeRestore or Replica. Changing this forces a new PostgreSQL Flexible Server to be created.<br>    auto_grow_enabled                 = bool<br>    storage_mb                        = number<br>    storage_tier                      = string<br>    version                           = string # Required when create_mode is Default<br>    zone                              = string<br>    tags                              = map(string)<br><br>    authentication = list(object({<br>      active_directory_auth_enabled = bool<br>      password_auth_enabled         = bool<br>      tenant_id                     = string # Required when active_directory_auth_enabled is set to true<br>    }))<br><br>    customer_managed_key = list(object({<br>      key_vault_key_id                     = string # Required<br>      primary_user_assigned_identity_id    = string<br>      geo_backup_key_vault_key_id          = string<br>      geo_backup_user_assigned_identity_id = string<br><br>    }))<br><br>    high_availability = list(object({<br>      mode                      = string # Required<br>      standby_availability_zone = string<br>    }))<br><br>    identity = list(object({<br>      type         = string      # Required<br>      identity_ids = set(string) # Required if used together with customer_managed_key block.<br>    }))<br><br>    maintenance_window = list(object({<br>      day_of_week  = number<br>      start_hour   = number<br>      start_minute = number<br>    }))<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_postgresql_flexible_servers"></a> [postgresql\_flexible\_servers](#output\_postgresql\_flexible\_servers) | An object containing the Azure Postgresql Flexible Servers created by the module. |
<!-- markdown-table-prettify-ignore-end -->

<!-- END_TF_DOCS -->