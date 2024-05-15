resource "random_password" "edw_postgres_secret" {
  length  = 32
  special = true
}

module "key_vault_secret" {
  source = "../../../modules/terraform-azurerm-key-vault-secret"

  azurerm_key_vault_secret_params = {
    # edw_postgres_secret = {
    #   name            = "edw-postgres"                                  # Required
    #   value           = random_password.edw_postgres_secret.result      # Required, the value will be automatically encrypted.
    #   key_vault_id    = module.key_vault.key_vaults["edw_key_vault"].id # Required
    #   content_type    = null
    #   not_before_date = null
    #   expiration_date = null
    #   tags            = module.tags.tags

    #   depends_on = [
    #     module.key_vault_access_policy.key_vault_access_policies["edw_key_vault_access_policy"].id
    #   ]
    # }
  }
}
