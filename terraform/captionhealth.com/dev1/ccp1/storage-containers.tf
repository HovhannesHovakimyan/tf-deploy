module "storage_container" {
  source = "../../modules/terraform-azurerm-storage-container"

  azurerm_storage_container_params = {
    # ccp_storage_container = {
    #   name                  = module.naming["ccp_storage_container"].storage_container.name_unique # Required
    #   storage_account_name  = module.storage_account.storage_accounts["ccp_storage_account"].name  # Required
    #   container_access_type = null
    #   metadata              = null
    # }
  }
}
