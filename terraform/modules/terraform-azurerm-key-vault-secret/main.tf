resource "azurerm_key_vault_secret" "this" {
  for_each = var.azurerm_key_vault_secret_params

  name            = each.value.name             # Required
  value           = sensitive(each.value.value) # Required, the value will be automatically encrypted.
  key_vault_id    = each.value.key_vault_id     # Required
  content_type    = each.value.content_type
  not_before_date = each.value.not_before_date
  expiration_date = each.value.expiration_date
  tags            = each.value.tags
}
