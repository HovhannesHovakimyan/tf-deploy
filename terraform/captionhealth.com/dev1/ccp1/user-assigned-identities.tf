module "user_assigned_identity" {
  source = "../../modules/terraform-azurerm-user-assigned-identity"

  azurerm_user_assigned_identity_params = {
    # user_assigned_identity_main_aks = {
    #   location            = module.resource_group.resource_groups["ccp_rg"].location                            # Required
    #   name                = module.naming["user_assigned_identity_main_aks"].user_assigned_identity.name_unique # Required
    #   resource_group_name = module.resource_group.resource_groups["ccp_rg"].name                                # Required
    #   tags                = module.tags.tags
    # }
  }
}
