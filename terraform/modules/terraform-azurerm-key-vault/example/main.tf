data "azurerm_client_config" "current" {}

module "key_vault" {
  source  = "app.terraform.io/captionhealth/key-vault/azurerm"
  version = "1.0.0"

  azurerm_key_vault_params = {
    key_vault_1 = {
      name                            = module.name.names["main_key_vault"].result                # Required
      location                        = module.resource_group.resource_groups["main_rg"].location # Required
      resource_group_name             = module.resource_group.resource_groups["main_rg"].name     # Required
      sku_name                        = "standard"                                                # Required
      tenant_id                       = data.azurerm_client_config.current.tenant_id              # Required
      enabled_for_deployment          = null
      enabled_for_disk_encryption     = null
      enabled_for_template_deployment = null
      enable_rbac_authorization       = null
      purge_protection_enabled        = null
      public_network_access_enabled   = null
      soft_delete_retention_days      = null
      tags                            = null

      access_policy = [] # To set an access policy, use the terraform-azurerm-key-vault-access-policy module.

      network_acls = [
        # {
        #   bypass                     = "AzureServices" # Required
        #   default_action             = "Allow"         # Required
        #   ip_rules                   = []
        #   virtual_network_subnet_ids = [module.subnet.subnets["subnet_1"].id]
        # }
      ]

      contact = [
        # {
        #   email = "devops@captionhelth.com" # Required
        #   name  = "DevOps Team"
        #   phone = null
        # }
      ]
    }
  }
}
