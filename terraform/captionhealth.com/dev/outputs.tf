output "tags" {
  description = "Tags created for resources"
  value       = module.tags.tags
}

output "names" {
  description = "Names created for resources"
  value       = module.name.names
}

output "resource_groups" {
  description = "All created resource groups"
  value       = module.resource_group.resource_groups
}
