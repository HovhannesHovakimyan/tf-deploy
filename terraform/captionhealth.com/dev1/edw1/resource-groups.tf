module "resource_group" {
  source = "../../modules/terraform-azurerm-resource-group"

  resource_group_params = {
    edw_rg = {
      location   = local.location                                     # Required
      name       = module.naming["edw_rg"].resource_group.name_unique # Required
      managed_by = null
      tags       = module.tags.tags
    }
  }
}
