resource "azurerm_key_vault_key" "this" {
  for_each = var.azurerm_key_vault_key_params

  name            = each.value.name         # Required
  key_vault_id    = each.value.key_vault_id # Required
  key_type        = each.value.key_type     # Required
  key_size        = each.value.key_size
  curve           = each.value.curve
  key_opts        = each.value.key_opts # Required
  not_before_date = each.value.not_before_date
  expiration_date = each.value.expiration_date
  tags            = each.value.tags

  dynamic "rotation_policy" {
    iterator = rp
    for_each = each.value.rotation_policy

    content {
      expire_after         = rp.value.expire_after
      notify_before_expiry = rp.value.notify_before_expiry
      dynamic "automatic" {
        iterator = a
        for_each = rp.value.automatic

        content {
          time_after_creation = a.value.time_after_creation
          time_before_expiry  = a.value.time_before_expiry
        }
      }
    }
  }
}
