resource "azurerm_monitor_smart_detector_alert_rule" "this" {
  for_each = var.azurerm_monitor_smart_detector_alert_rule_params

  name                = each.value.name                # Required
  resource_group_name = each.value.resource_group_name # Required
  detector_type       = each.value.detector_type       # Required
  scope_resource_ids  = each.value.scope_resource_ids  # Required
  severity            = each.value.severity            # Required
  frequency           = each.value.frequency
  description         = each.value.description
  enabled             = each.value.enabled
  throttling_duration = each.value.throttling_duration
  tags                = each.value.tags

  dynamic "action_group" { # Required
    iterator = ag
    for_each = each.value.action_group

    content {
      ids             = ag.value.ids # Required
      email_subject   = ag.value.email_subject
      webhook_payload = ag.value.webhook_payload
    }
  }
}
