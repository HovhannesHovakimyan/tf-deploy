output "application_insights_web_tests" {
  description = "An object containing data created by the Application Insights Web Tests module."
  value       = module.application_insights_web_test.application_insights_web_tests
}
