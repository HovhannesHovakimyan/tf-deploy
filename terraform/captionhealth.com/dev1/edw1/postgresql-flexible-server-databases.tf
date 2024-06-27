module "postgresql_flexible_server_database" {
  source = "../../modules/terraform-azurerm-postgresql-flexible-server-database"

  azurerm_postgresql_flexible_server_database_params = {
    # edw_db1 = {
    #   name      = module.naming["edw_postgres_flexible_database_1"].postgresql_database.name_unique           # Required
    #   server_id = module.postgresql_flexible_server.postgresql_flexible_servers["edw_postgresql_flexible"].id # Required
    #   charset   = "utf8"
    #   collation = "en_US.utf8"
    # }
  }
}
