module "private_dns_a_record" {
  source  = "app.terraform.io/captionhealth/private-dns-zone/azurerm"
  version = "1.0.0"

  azurerm_private_dns_a_record_params = {
    private_dns_a_record_1 = {
      name                = "mydomain.com"                                                          # Required
      resource_group_name = module.resource_group.resource_groups["main_rg"].location               # Required
      zone_name           = module.private_dns_zone.private_dns_zones["main_private_dns_zone"].name # Required
      ttl                 = 300                                                                     # Required
      records             = ["10.0.180.17"]                                                         # Required
      tags                = null
    }
  }
}
