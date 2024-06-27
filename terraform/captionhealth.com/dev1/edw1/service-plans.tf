module "azurerm_service_plan" {
  source = "../../modules/terraform-azurerm-service-plan"
  azurerm_service_plan_params = {
    # edw_service_plan_linux = {
    #   name                         = module.naming["edw_srv_plan_1"].function_app.name_unique # Required
    #   location                     = module.resource_group.resource_groups["edw_rg"].location # Required
    #   os_type                      = "Linux"                                                  # Required
    #   resource_group_name          = module.resource_group.resource_groups["edw_rg"].name     # Required
    #   sku_name                     = "P1v2"                                                   # Required
    #   app_service_environment_id   = null
    #   maximum_elastic_worker_count = null
    #   worker_count                 = null
    #   per_site_scaling_enabled     = null
    #   zone_balancing_enabled       = null
    #   tags                         = module.tags.tags
    # }
  }
}
