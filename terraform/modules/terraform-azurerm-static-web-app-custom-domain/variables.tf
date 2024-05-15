variable "azurerm_static_web_app_custom_domain_params" {
  description = "Object map for Azure Static Web App Custom Domain module input parameters."
  type = map(object({
    domain_name       = string # Required
    static_web_app_id = string # Required
    validation_type   = string # Required
  }))
}
