resource "azurerm_postgresql_flexible_server_configuration" "this" {
  for_each = var.azurerm_postgresql_flexible_server_configuration_params

  name      = each.value.name      # Required
  server_id = each.value.server_id # Required
  value     = each.value.value     # Required
}
