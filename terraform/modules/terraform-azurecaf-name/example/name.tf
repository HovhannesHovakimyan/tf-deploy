module "name" {
  source  = "app.terraform.io/captionhealth/name/azurecaf"
  version = "1.0.0"

  azurecaf_name_params = {
    azurecaf_name01 = {
      name           = "infra"
      prefixes       = ["contoso"]
      suffixes       = ["eastus"]
      random_length  = 2
      random_seed    = null
      resource_type  = "azurerm_resource_group"
      resource_types = null
      separator      = null
      clean_input    = true
      passthrough    = null
      use_slug       = null
    }
  }
}
