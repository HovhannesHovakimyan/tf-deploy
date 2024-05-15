# Docs for Private Endpoint DNS Zones https://learn.microsoft.com/en-us/azure/private-link/private-endpoint-dns

module "private_dns_zone" {
  source = "../../../modules/terraform-azurerm-private-dns-zone"

  azurerm_private_dns_zone_params = {
    # ccp_private_dns_zone_private_endpoint_main_aks = {
    #   name                = "privatelink.eastus.azmk8s.io"                       # Required
    #   resource_group_name = module.resource_group.resource_groups["ccp_rg"].name # Required
    #   tags                = module.tags.tags
    #   soa_record          = []
    # }
    # ccp_private_dns_zone_private_endpoint_postgres = {
    #   name                = "privatelink.postgres.database.azure.com"            # Required
    #   resource_group_name = module.resource_group.resource_groups["ccp_rg"].name # Required
    #   tags                = module.tags.tags
    #   soa_record          = []
    # }
    # ccp_private_dns_zone_private_endpoint_blob = {
    #   name                = "privatelink.blob.core.windows.net"                  # Required
    #   resource_group_name = module.resource_group.resource_groups["ccp_rg"].name # Required
    #   tags                = module.tags.tags
    #   soa_record          = []
    # }
    # ccp_private_dns_zone_private_endpoint_key_vault = {
    #   name                = "privatelink.vaultcore.azure.net"                    # Required
    #   resource_group_name = module.resource_group.resource_groups["ccp_rg"].name # Required
    #   tags                = module.tags.tags
    #   soa_record          = []
    # }
  }
}
