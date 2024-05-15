resource "azurerm_postgresql_flexible_server_database" "this" {
  for_each = var.azurerm_postgresql_flexible_server_database_params

  name      = each.value.name      # Required
  server_id = each.value.server_id # Required
  charset   = each.value.charset
  collation = each.value.collation
}
