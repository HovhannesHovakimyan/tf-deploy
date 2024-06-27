module "static_web_app" {
  source = "../../modules/terraform-azurerm-static-web-app"
  azurerm_static_web_app_params = {
    # ccp_static_web_app_admin = {
    #   name                               = module.naming["ccp_static_web_app_admin"].static_web_app.name_unique # Required
    #   location                           = "eastus2"                                                            # Required
    #   resource_group_name                = module.resource_group.resource_groups["ccp_rg"].name                 # Required
    #   configuration_file_changes_enabled = null
    #   preview_environments_enabled       = null
    #   sku_tier                           = "Standard"
    #   sku_size                           = "Standard"
    #   app_settings                       = null
    #   tags                               = module.tags.tags

    #   basic_auth = []

    #   identity = [
    #     {
    #       type         = "SystemAssigned" # Required
    #       identity_ids = null
    #     }
    #   ]
    # }
    # ccp_static_web_app_scanner = {
    #   name                               = module.naming["ccp_static_web_app_scanner"].static_web_app.name_unique # Required
    #   location                           = "eastus2"                                                              # Required
    #   resource_group_name                = module.resource_group.resource_groups["ccp_rg"].name                   # Required
    #   configuration_file_changes_enabled = null
    #   preview_environments_enabled       = null
    #   sku_tier                           = "Standard"
    #   sku_size                           = "Standard"
    #   app_settings                       = null
    #   tags                               = module.tags.tags

    #   basic_auth = []

    #   identity = [
    #     {
    #       type         = "SystemAssigned" # Required
    #       identity_ids = null
    #     }
    #   ]
    # }
  }
}
