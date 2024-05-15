output "static_web_app_custom_domains" {
  description = "An object containing the Azure Static Web App Custom Domains created by the module."
  value       = module.static_web_app_custom_domain.static_web_app_custom_domains
}
