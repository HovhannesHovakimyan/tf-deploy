output "service_principals" {
  description = "An object containing the Azure Service Principals created by the module."
  value       = module.service_principal.service_principals
}
