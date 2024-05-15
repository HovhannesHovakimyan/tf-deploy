module "storage_account" {
  source  = "app.terraform.io/captionhealth/storage-account/azurerm"
  version = "1.0.0"

  azurerm_storage_account_params = {
    main_storage_account = {
      name                              = module.name.names["main_storage_account"].result          # Required
      resource_group_name               = module.resource_group.resource_groups["main_rg"].name     # Required
      location                          = module.resource_group.resource_groups["main_rg"].location # Required
      account_kind                      = null
      account_tier                      = "Standard" # Required
      account_replication_type          = "LRS"      # Required
      cross_tenant_replication_enabled  = null
      access_tier                       = null
      edge_zone                         = null
      enable_https_traffic_only         = null
      min_tls_version                   = null
      allow_nested_items_to_be_public   = null
      shared_access_key_enabled         = null
      public_network_access_enabled     = null
      default_to_oauth_authentication   = null
      is_hns_enabled                    = null
      nfsv3_enabled                     = null
      large_file_share_enabled          = null
      local_user_enabled                = null
      queue_encryption_key_type         = null
      table_encryption_key_type         = null
      infrastructure_encryption_enabled = null
      allowed_copy_scope                = null
      sftp_enabled                      = null
      tags                              = null

      custom_domain = [
        # {
        #   name          = null # Required
        #   use_subdomain = null
        # }
      ]

      customer_managed_key = [
        # {
        #   key_vault_key_id          = null # Required
        #   user_assigned_identity_id = null # Required
        # }
      ]

      identity = [
        # {
        #   type         = string
        #   identity_ids = set(string)
        # }
      ]

      blob_properties = [
        # {
        #   cors_rule = [
        #     {
        #       allowed_headers    = null # Required
        #       allowed_methods    = null # Required
        #       allowed_origins    = null # Required
        #       exposed_headers    = null # Required
        #       max_age_in_seconds = null # Required
        #     }
        #   ]
        #   delete_retention_policy = [
        #     {
        #       days = 7
        #     }
        #   ]
        #   restore_policy = [
        #     {
        #       days = 7
        #     }
        #   ]
        # }
      ]

      queue_properties = [
        # {
        #   cors_rule = [
        #     {
        #       allowed_headers    = null # Required
        #       allowed_methods    = null # Required
        #       allowed_origins    = null # Required
        #       exposed_headers    = null # Required
        #       max_age_in_seconds = null # Required
        #     }
        #   ]
        #   logging = [
        #     {
        #       delete                = null # Required
        #       read                  = null # Required
        #       version               = null # Required
        #       write                 = null # Required
        #       retention_policy_days = null
        #     }
        #   ]
        #   minute_metrics = [
        #     {
        #       enabled               = null # Required
        #       version               = null # Required
        #       include_apis          = null
        #       retention_policy_days = null
        #     }
        #   ]
        #   hour_metrics = [
        #     {
        #       enabled               = null # Required
        #       version               = null # Required
        #       include_apis          = null
        #       retention_policy_days = null
        #     }
        #   ]
        # }
      ]

      static_website = [
        # {
        #   index_document     = null
        #   error_404_document = null
        # }
      ]

      share_properties = [
        # {
        #   cors_rule = [
        #     {
        #       allowed_headers    = null # Required
        #       allowed_methods    = null # Required
        #       allowed_origins    = null # Required
        #       exposed_headers    = null # Required
        #       max_age_in_seconds = null # Required
        #     }
        #   ]
        #   retention_policy = [
        #     {
        #       days = 7
        #     }
        #   ]
        #   smb = [
        #     {
        #       versions                        = null
        #       authentication_types            = null
        #       kerberos_ticket_encryption_type = null
        #       channel_encryption_type         = null
        #       multichannel_enabled            = null
        #     }
        #   ]
        # }
      ]

      network_rules = [
        # {
        #   default_action             = null # Required
        #   bypass                     = null
        #   ip_rules                   = null
        #   virtual_network_subnet_ids = null
        #   private_link_access = [
        #     {
        #       endpoint_resource_id = null # Required
        #       endpoint_tenant_id   = null
        #     }
        #   ]
        # }
      ]

      azure_files_authentication = [
        # {
        #   directory_type = string # Required
        #   active_directory = [
        #     {
        #       domain_name         = null # Required
        #       domain_guid         = null # Required
        #       domain_sid          = null
        #       storage_sid         = null
        #       forest_name         = null
        #       netbios_domain_name = null
        #     }
        #   ]
        # }
      ]

      routing = [
        # {
        #   publish_internet_endpoints  = null
        #   publish_microsoft_endpoints = null
        #   choice                      = null
        # }
      ]

      immutability_policy = [
        # {
        #   allow_protected_append_writes = null # Required
        #   state                         = null # Required
        #   period_since_creation_in_days = null # Required
        # }
      ]

      sas_policy = [
        # {
        #   expiration_period = null # Required
        #   expiration_action = null
        # }
      ]
    }
  }
}
