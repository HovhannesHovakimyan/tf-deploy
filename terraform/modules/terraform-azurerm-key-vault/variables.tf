variable "azurerm_key_vault_params" {
  description = "Object map for Azure Key Vault module input parameters."
  type = map(object({
    name                            = string # Required
    location                        = string # Required
    resource_group_name             = string # Required
    sku_name                        = string # Required
    tenant_id                       = string # Required
    enabled_for_deployment          = bool
    enabled_for_disk_encryption     = bool
    enabled_for_template_deployment = bool
    enable_rbac_authorization       = bool
    purge_protection_enabled        = bool
    public_network_access_enabled   = bool
    soft_delete_retention_days      = number
    tags                            = map(string)

    access_policy = list(object({
      tenant_id               = string # Required
      object_id               = string # Required
      application_id          = string
      certificate_permissions = list(string)
      key_permissions         = list(string)
      secret_permissions      = list(string)
      storage_permissions     = list(string)
    }))

    network_acls = list(object({
      bypass                     = string # Required
      default_action             = string # Required
      ip_rules                   = set(string)
      virtual_network_subnet_ids = set(string)
    }))

    contact = list(object({
      email = string # Required
      name  = string
      phone = string
    }))
  }))
}
