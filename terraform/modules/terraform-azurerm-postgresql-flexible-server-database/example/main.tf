module "postgresql_flexible_server_database" {
  source  = "app.terraform.io/captionhealth/postgresql-flexible-server-database/azurerm"
  version = "1.0.0"

  azurerm_postgresql_flexible_server_database_params = {
    postgresql_flexible_server_database_1 = {
      name      = "exampledb"                                                                                      # Required
      server_id = module.postgresql_flexible_server.postgresql_flexible_servers["postgresql_flexible_server_1"].id # Required
      charset   = "en_US.utf8"
      collation = "utf8"
    }
  }
}
