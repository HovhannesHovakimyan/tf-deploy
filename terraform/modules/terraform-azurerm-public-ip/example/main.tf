module "public_ip" {
  source  = "app.terraform.io/captionhealth/public-ip/azurerm"
  version = "1.0.0"

  azurerm_public_ip_params = {
    public_ip1 = {
      name                    = module.name.names["public_ip1"].result                    # Required
      resource_group_name     = module.resource_group.resource_groups["main_rg"].name     # Required
      location                = module.resource_group.resource_groups["main_rg"].location # Required
      allocation_method       = "Static"                                                  # Required
      zones                   = null
      ddos_protection_mode    = null
      ddos_protection_plan_id = null
      domain_name_label       = null
      edge_zone               = null
      idle_timeout_in_minutes = null
      ip_tags                 = null
      ip_version              = null
      public_ip_prefix_id     = null
      reverse_fqdn            = null
      sku                     = null
      sku_tier                = null
      tags                    = null

      # If this resource is to be associated with a resource that requires disassociation before destruction (such as azurerm_network_interface) it is recommended to set the lifecycle argument create_before_destroy = true.
      create_before_destroy = true
    }
  }
}
