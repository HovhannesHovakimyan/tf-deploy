output "monitor_smart_detector_alert_rules" {
  description = "An object containing the Azure Monitor Smart Detector Alert Rules created by the module."
  value       = azurerm_monitor_smart_detector_alert_rule.this
}
