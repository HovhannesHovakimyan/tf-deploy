module "key_vault" {
  source = "../../../modules/terraform-azurerm-key-vault"

  azurerm_key_vault_params = {
    # ccp_key_vault = {
    #   name                            = module.naming["ccp_key_vault"].key_vault.name_unique     # Required
    #   location                        = module.resource_group.resource_groups["ccp_rg"].location # Required
    #   resource_group_name             = module.resource_group.resource_groups["ccp_rg"].name     # Required
    #   sku_name                        = "standard"                                               # Required
    #   tenant_id                       = data.azurerm_client_config.current.tenant_id             # Required
    #   enabled_for_deployment          = null
    #   enabled_for_disk_encryption     = null
    #   enabled_for_template_deployment = null
    #   enable_rbac_authorization       = null
    #   purge_protection_enabled        = null
    #   public_network_access_enabled   = true
    #   soft_delete_retention_days      = null
    #   tags                            = module.tags.tags

    #   access_policy = [] # To set an access policy, use the terraform-azurerm-key-vault-access-policy module.

    #   network_acls = [
    #     {
    #       bypass                     = "AzureServices" # Required
    #       default_action             = "Deny"          # Required
    #       ip_rules                   = ["78.109.78.255"]
    #       virtual_network_subnet_ids = []
    #     }
    #   ]

    #   contact = []
    # }
  }
}
