output "log_analytics_workspaces" {
  description = "An object containing the Azure Log Analytics Workspaces created by the module."
  sensitive   = true
  value       = module.log_analytics_workspace.log_analytics_workspaces
}
