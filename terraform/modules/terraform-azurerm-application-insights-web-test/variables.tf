variable "azurerm_application_insights_web_test_params" {
  description = "Object map for Azure Application Insights Web Test module input parameters."
  type = map(object({
    name                    = string       # Required
    resource_group_name     = string       # Required
    application_insights_id = string       # Required
    location                = string       # Required
    kind                    = string       # Required
    geo_locations           = list(string) # Required
    configuration           = string       # Required
    frequency               = number
    timeout                 = number
    enabled                 = bool
    retry_enabled           = bool
    description             = string
    tags                    = map(string)
  }))
}
