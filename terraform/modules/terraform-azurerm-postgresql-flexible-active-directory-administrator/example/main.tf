data "azurerm_client_config" "current" {}

data "azuread_service_principal" "example" {
  object_id = data.azurerm_client_config.current.object_id
}

module "postgresql_flexible_server_active_directory_administrator" {
  source  = "app.terraform.io/captionhealth/postgresql-flexible-server-active-directory-administrator/azurerm"
  version = "1.0.0"

  azurerm_postgresql_flexible_server_active_directory_administrator_params = {
    postgresql_flexible_server_active_directory_administrator_1 = {
      server_name         = module.postgresql_flexible_server.postgresql_flexible_servers["postgresql_flexible_server_1"].name # Required
      resource_group_name = module.resource_group.resource_groups["postgres_rg"].name                                          # Required
      object_id           = data.azuread_service_principal.example.object_id                                                   # Required
      tenant_id           = data.azurerm_client_config.current.tenant_id                                                       # Required
      principal_name      = data.azuread_service_principal.example.display_name                                                # Required
      principal_type      = "ServicePrincipal"                                                                                 # Required
    }
  }
}
