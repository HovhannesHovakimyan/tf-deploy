output "linux_function_apps" {
  description = "An object containing the Azure Linux Function Apps created by the module."
  value       = azurerm_linux_function_app.this
}
