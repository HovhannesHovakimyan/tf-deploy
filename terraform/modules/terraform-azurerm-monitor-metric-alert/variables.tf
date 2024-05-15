variable "azurerm_monitor_metric_alert_params" {
  description = "Object map for Azure Monitor Metric Alert module input parameters."

  type = map(object({
    name                     = string      # Required
    resource_group_name      = string      # Required
    scopes                   = set(string) # Required
    enabled                  = bool
    auto_mitigate            = bool
    description              = string
    frequency                = string
    severity                 = number
    target_resource_type     = string
    target_resource_location = string
    window_size              = string
    tags                     = map(string)

    criteria = list(object({
      metric_namespace       = string # Required
      metric_name            = string # Required
      aggregation            = string # Required
      operator               = string # Required
      threshold              = number # Required
      skip_metric_validation = bool
      dimension = list(object({
        name     = string       # Required
        operator = string       # Required
        values   = list(string) # Required
      }))
    }))

    dynamic_criteria = list(object({
      metric_namespace         = string # Required
      metric_name              = string # Required
      aggregation              = string # Required
      operator                 = string # Required
      alert_sensitivity        = string # Required
      evaluation_total_count   = number
      evaluation_failure_count = number
      ignore_data_before       = string
      skip_metric_validation   = bool
      dimension = list(object({
        name     = string       # Required
        operator = string       # Required
        values   = list(string) # Required
      }))
    }))

    application_insights_web_test_location_availability_criteria = list(object({
      web_test_id           = string # Required
      component_id          = string # Required
      failed_location_count = number # Required
    }))

    action = list(object({
      action_group_id    = string # Required
      webhook_properties = map(string)
    }))
  }))
}
