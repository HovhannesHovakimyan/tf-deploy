variable "azurerm_monitor_smart_detector_alert_rule_params" {
  description = "Object map for Azure Monitor Smart Detector Alert Rule module input parameters."
  type = map(object({
    name                = string      # Required
    resource_group_name = string      # Required
    detector_type       = string      # Required
    scope_resource_ids  = set(string) # Required
    severity            = string      # Required
    frequency           = string
    description         = string
    enabled             = bool
    throttling_duration = string
    tags                = map(string)

    action_group = list(object({    # Required
      ids             = set(string) # Required
      email_subject   = string
      webhook_payload = string
    }))
  }))
}
