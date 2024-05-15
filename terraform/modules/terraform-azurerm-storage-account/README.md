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
| [azurerm_storage_account.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azurerm_storage_account_params"></a> [azurerm\_storage\_account\_params](#input\_azurerm\_storage\_account\_params) | Object map for Azure Storage Account module input parameters. | <pre>map(object({<br>    name                              = string<br>    resource_group_name               = string<br>    location                          = string<br>    account_kind                      = string<br>    account_tier                      = string # Required<br>    account_replication_type          = string # Required<br>    cross_tenant_replication_enabled  = bool<br>    access_tier                       = string<br>    edge_zone                         = string<br>    enable_https_traffic_only         = bool<br>    min_tls_version                   = string<br>    allow_nested_items_to_be_public   = bool<br>    shared_access_key_enabled         = bool<br>    public_network_access_enabled     = bool<br>    default_to_oauth_authentication   = bool<br>    is_hns_enabled                    = bool<br>    nfsv3_enabled                     = bool<br>    large_file_share_enabled          = bool<br>    local_user_enabled                = bool<br>    queue_encryption_key_type         = string<br>    table_encryption_key_type         = string<br>    infrastructure_encryption_enabled = bool<br>    allowed_copy_scope                = string<br>    sftp_enabled                      = bool<br>    tags                              = map(string)<br><br>    custom_domain = list(object({<br>      name          = string # Required<br>      use_subdomain = bool<br>    }))<br><br>    customer_managed_key = list(object({<br>      key_vault_key_id          = string # Required<br>      user_assigned_identity_id = string # Required<br>    }))<br><br>    identity = list(object({<br>      type         = string<br>      identity_ids = set(string)<br>    }))<br><br>    blob_properties = list(object({<br>      cors_rule = list(object({<br>        allowed_headers    = list(string) # Required<br>        allowed_methods    = list(string) # Required<br>        allowed_origins    = list(string) # Required<br>        exposed_headers    = list(string) # Required<br>        max_age_in_seconds = number       # Required<br>      }))<br>      delete_retention_policy = list(object({<br>        days = number<br>      }))<br>      restore_policy = list(object({<br>        days = number<br>      }))<br>    }))<br><br>    queue_properties = list(object({<br>      cors_rule = list(object({<br>        allowed_headers    = list(string) # Required<br>        allowed_methods    = list(string) # Required<br>        allowed_origins    = list(string) # Required<br>        exposed_headers    = list(string) # Required<br>        max_age_in_seconds = number       # Required<br>      }))<br>      logging = list(object({<br>        delete                = bool   # Required<br>        read                  = bool   # Required<br>        version               = string # Required<br>        write                 = bool   # Required<br>        retention_policy_days = number<br>      }))<br>      minute_metrics = list(object({<br>        enabled               = bool   # Required<br>        version               = string # Required<br>        include_apis          = bool<br>        retention_policy_days = number<br>      }))<br>      hour_metrics = list(object({<br>        enabled               = bool   # Required<br>        version               = string # Required<br>        include_apis          = bool<br>        retention_policy_days = number<br>      }))<br>    }))<br><br>    static_website = list(object({<br>      index_document     = string<br>      error_404_document = string<br>    }))<br><br>    share_properties = list(object({<br>      cors_rule = list(object({<br>        allowed_headers    = list(string) # Required<br>        allowed_methods    = list(string) # Required<br>        allowed_origins    = list(string) # Required<br>        exposed_headers    = list(string) # Required<br>        max_age_in_seconds = number       # Required<br>      }))<br>      retention_policy = list(object({<br>        days = number<br>      }))<br>      smb = list(object({<br>        versions                        = set(string)<br>        authentication_types            = set(string)<br>        kerberos_ticket_encryption_type = set(string)<br>        channel_encryption_type         = set(string)<br>        multichannel_enabled            = bool<br>      }))<br>    }))<br><br>    network_rules = list(object({<br>      default_action             = set(string) # Required<br>      bypass                     = set(string)<br>      ip_rules                   = string<br>      virtual_network_subnet_ids = set(string)<br>      private_link_access = list(object({<br>        endpoint_resource_id = string # Required<br>        endpoint_tenant_id   = string<br>      }))<br>    }))<br><br>    azure_files_authentication = list(object({<br>      directory_type = string # Required<br>      active_directory = list(object({<br>        domain_name         = string # Required<br>        domain_guid         = string # Required<br>        domain_sid          = string<br>        storage_sid         = string<br>        forest_name         = string<br>        netbios_domain_name = string<br>      }))<br>    }))<br><br>    routing = list(object({<br>      publish_internet_endpoints  = bool<br>      publish_microsoft_endpoints = bool<br>      choice                      = string<br>    }))<br><br>    immutability_policy = list(object({<br>      allow_protected_append_writes = bool   # Required<br>      state                         = string # Required<br>      period_since_creation_in_days = number # Required<br>    }))<br><br>    sas_policy = list(object({<br>      expiration_period = string # Required<br>      expiration_action = string<br>    }))<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_storage_accounts"></a> [storage\_accounts](#output\_storage\_accounts) | An object containing the Storage Accounts created by the module. |
<!-- markdown-table-prettify-ignore-end -->

<!-- END_TF_DOCS -->