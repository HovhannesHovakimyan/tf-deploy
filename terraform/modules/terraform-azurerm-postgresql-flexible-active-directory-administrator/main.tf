resource "azurerm_postgresql_flexible_server_active_directory_administrator" "this" {
  for_each = var.azurerm_postgresql_flexible_server_active_directory_administrator_params

  server_name         = each.value.server_name         # Required
  resource_group_name = each.value.resource_group_name # Required
  object_id           = each.value.object_id           # Required
  tenant_id           = each.value.tenant_id           # Required
  principal_name      = each.value.principal_name      # Required
  principal_type      = each.value.principal_type      # Required
}
