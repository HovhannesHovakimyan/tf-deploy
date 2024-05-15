module "static_web_app_custom_domain" {
  source  = "app.terraform.io/captionhealth/static-web-app-custom-domain/azurerm"
  version = "1.0.0"

  azurerm_static_web_app_custom_domain_params = {
    static_web_app_custom_domain_1 = {
      domain_name       = "${module.dns_cname_record.dns_cname_records["dns_cname_record_1"].name}.${module.dns_cname_record.dns_cname_records["dns_cname_record_1"].zone_name}" # Required
      static_web_app_id = module.static_web_app.static_web_apps["static_web_app_1"].id                                                                                           # Required
      validation_type   = "cname-delegation"                                                                                                                                     # Required
    }
  }
}
