output "monitor_metric_alerts" {
  description = "An object containing the Azure Monitor Metric Alert created by the module."
  value       = azurerm_monitor_metric_alert.this
}
