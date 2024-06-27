module "storage_account" {
  source = "../../modules/terraform-azurerm-storage-account"

  azurerm_storage_account_params = {
    # ccp_storage_account = {
    #   name                              = module.naming["ccp_storage_account"].storage_account.name_unique # Required
    #   resource_group_name               = module.resource_group.resource_groups["ccp_rg"].name             # Required
    #   location                          = module.resource_group.resource_groups["ccp_rg"].location         # Required
    #   account_kind                      = "StorageV2"
    #   account_tier                      = "Standard" # Required
    #   account_replication_type          = "LRS"      # Required
    #   cross_tenant_replication_enabled  = null
    #   access_tier                       = null
    #   edge_zone                         = null
    #   enable_https_traffic_only         = null
    #   min_tls_version                   = null
    #   allow_nested_items_to_be_public   = null
    #   shared_access_key_enabled         = null
    #   public_network_access_enabled     = null
    #   default_to_oauth_authentication   = null
    #   is_hns_enabled                    = null
    #   nfsv3_enabled                     = null
    #   large_file_share_enabled          = null
    #   local_user_enabled                = null
    #   queue_encryption_key_type         = null
    #   table_encryption_key_type         = null
    #   infrastructure_encryption_enabled = null
    #   allowed_copy_scope                = null
    #   sftp_enabled                      = null
    #   tags                              = module.tags.tags

    #   custom_domain        = []
    #   customer_managed_key = []
    #   identity             = []
    #   blob_properties      = []
    #   queue_properties     = []
    #   static_website       = []
    #   share_properties     = []
    #   network_rules = [
    #     # {
    #     #   default_action             = "Allow"
    #     #   bypass                     = ["AzureServices"]
    #     #   ip_rules                   = null
    #     #   virtual_network_subnet_ids = null
    #     #   private_link_access        = []
    #     # }
    #   ]
    #   azure_files_authentication = []
    #   routing                    = []
    #   immutability_policy        = []
    #   sas_policy                 = []
    # }
  }
}
