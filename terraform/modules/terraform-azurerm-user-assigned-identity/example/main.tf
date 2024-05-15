module "user_assigned_identities" {
  source  = "app.terraform.io/captionhealth/user-assigned-identities/azurerm"
  version = "1.0.0"

  user_assigned_identities_params = {
    user_assigned_identity_1 = {
      location            = module.resource_group.resource_groups["main_rg"].location # Required
      name                = "example"                                                 # Required
      resource_group_name = module.resource_group.resource_groups["main_rg"].name     # Required
      tags                = module.tags.tags
    }
  }
}
