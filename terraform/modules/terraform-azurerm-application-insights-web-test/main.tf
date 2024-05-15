resource "azurerm_application_insights_web_test" "this" {
  for_each = var.azurerm_application_insights_web_test_params

  name                    = each.value.name                    # Required
  resource_group_name     = each.value.resource_group_name     # Required
  application_insights_id = each.value.application_insights_id # Required
  location                = each.value.location                # Required
  kind                    = each.value.kind                    # Required
  geo_locations           = each.value.geo_locations           # Required
  configuration           = each.value.configuration           # Required
  frequency               = each.value.frequency
  timeout                 = each.value.timeout
  enabled                 = each.value.enabled
  retry_enabled           = each.value.retry_enabled
  description             = each.value.description
  tags                    = each.value.tags
}
