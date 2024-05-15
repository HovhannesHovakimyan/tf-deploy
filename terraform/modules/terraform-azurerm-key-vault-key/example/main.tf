module "azurerm_key_vault_key" {
  source  = "app.terraform.io/captionhealth/key-vault-key/azurerm"
  version = "1.0.0"

  azurerm_key_vault_key_params = {
    key_vault_key_1 = {
      name         = "generated-certificate"                       # Required
      key_vault_id = module.key_vault.key_vaults["key_vault_1"].id # Required
      key_type     = "RSA"                                         # Required
      key_size     = 2048
      curve        = null
      key_opts = [
        "decrypt",
        "encrypt",
        "sign",
        "unwrapKey",
        "verify",
        "wrapKey",
      ] # Required
      not_before_date = null
      expiration_date = null
      tags            = module.tags.tags

      rotation_policy = [
        {
          expire_after         = "P90D"
          notify_before_expiry = "P29D"
          automatic = [
            {
              time_after_creation = null
              time_before_expiry  = "P30D"
            }
          ]
        }
      ]
    }
  }
}
