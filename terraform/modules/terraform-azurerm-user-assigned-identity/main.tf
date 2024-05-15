resource "azurerm_user_assigned_identity" "this" {
  for_each = var.azurerm_user_assigned_identity_params

  location            = each.value.location            # Required
  name                = each.value.name                # Required
  resource_group_name = each.value.resource_group_name # Required
  tags                = each.value.tags
}
