output "monitor_action_groups" {
  description = "An object containing the Azure Monitor Action Groups created by the module."
  value       = module.monitor_action_group.monitor_action_groups
}
