module "role_assignment" {
  source = "../../../modules/terraform-azurerm-role-assignment"

  azurerm_role_assignment_params = {
    # role_assignment_main_aks = {
    #   name                                   = module.naming["role_assignment_main_aks"].role_assignment.name_unique
    #   scope                                  = module.private_dns_zone.private_dns_zones["ccp_private_dns_zone_private_endpoint_main_aks"].id # Required
    #   role_definition_id                     = null
    #   role_definition_name                   = "Private DNS Zone Contributor"
    #   principal_id                           = module.user_assigned_identity.user_assigned_identities["user_assigned_identity_main_aks"].principal_id # Required
    #   principal_type                         = null                                                                                                   # Required if one of condition or condition_version is set
    #   condition                              = null
    #   condition_version                      = null
    #   delegated_managed_identity_resource_id = null
    #   description                            = null
    #   skip_service_principal_aad_check       = null
    # }
  }
}
