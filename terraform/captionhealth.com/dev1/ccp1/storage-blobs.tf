module "blob_storage" {
  source = "../../modules/terraform-azurerm-storage-blob"

  azurerm_storage_blob_params = {
    # ccp_blob_storage = {
    #   name                   = module.naming["ccp_blob_storage"].storage_blob.name_unique                # Required
    #   storage_account_name   = module.storage_account.storage_accounts["ccp_storage_account"].name       # Required
    #   storage_container_name = module.storage_container.storage_containers["ccp_storage_container"].name # Required
    #   type                   = "Block"                                                                   # Required
    #   size                   = null
    #   access_tier            = null
    #   cache_control          = null
    #   content_type           = null
    #   content_md5            = null
    #   source                 = null
    #   source_content         = null
    #   source_uri             = null
    #   parallelism            = null
    #   metadata               = null
    # }
  }
}
