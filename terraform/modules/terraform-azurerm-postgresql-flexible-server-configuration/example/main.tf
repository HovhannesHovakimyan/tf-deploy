module "postgresql_flexible_server_configuration" {
  source  = "app.terraform.io/captionhealth/postgresql-flexible-server-configuration/azurerm"
  version = "1.0.0"

  azurerm_postgresql_flexible_server_configuration_params = {
    postgresql_flexible_server_configuration_1 = {
      name      = "azure.extensions"                                                                               # Required
      server_id = module.postgresql_flexible_server.postgresql_flexible_servers["postgresql_flexible_server_1"].id # Required
      value     = "CUBE,CITEXT,BTREE_GIST"                                                                         # Required
    }
  }
}
