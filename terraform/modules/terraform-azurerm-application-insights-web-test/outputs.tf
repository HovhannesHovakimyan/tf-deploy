output "application_insights_web_tests" {
  description = "An object containing data created by the Application Insights Web Tests module."
  value       = azurerm_application_insights_web_test.this
}
