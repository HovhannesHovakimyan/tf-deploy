variable "azurerm_private_dns_zone_params" {
  description = "Object map for Azure Private DNS Zone module input parameters."
  type = map(object({
    name                = string # Required
    resource_group_name = string # Required
    tags                = map(string)

    soa_record = list(object({
      email        = string # Required
      expire_time  = number
      minimum_ttl  = number
      refresh_time = number
      retry_time   = number
      ttl          = number
      tags         = map(string)
    }))
  }))
}
