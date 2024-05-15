module "key_vault_secret" {
  source  = "app.terraform.io/captionhealth/key-vault-secret/azurerm"
  version = "1.0.0"

  azurerm_key_vault_secret_params = {
    key_vault_secret_1 = {
      name            = "secret-sauce"                                # Required
      value           = "szechuan"                                    # Required, the value will be automatically encrypted.
      key_vault_id    = module.key_vault.key_vaults["key_vault_1"].id # Required
      content_type    = null
      not_before_date = null
      expiration_date = null
      tags            = module.tags.tags
    }
  }
}
