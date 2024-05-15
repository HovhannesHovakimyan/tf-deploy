resource "azurerm_static_web_app_custom_domain" "this" {
  for_each = var.azurerm_static_web_app_custom_domain_params

  domain_name       = each.value.domain_name       # Required
  static_web_app_id = each.value.static_web_app_id # Required
  validation_type   = each.value.validation_type   # Required
}
