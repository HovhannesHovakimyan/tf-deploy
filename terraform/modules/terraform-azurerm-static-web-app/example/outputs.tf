output "static_web_apps" {
  description = "An object containing the Azure Static Web Apps created by the module."
  value       = module.static_web_app.static_web_apps.this
}
