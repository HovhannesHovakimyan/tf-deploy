resource "azurerm_monitor_metric_alert" "this" {
  for_each = var.azurerm_monitor_metric_alert_params

  name                     = each.value.name                # Required
  resource_group_name      = each.value.resource_group_name # Required
  scopes                   = each.value.scopes              # Required
  enabled                  = each.value.enabled
  auto_mitigate            = each.value.auto_mitigate
  description              = each.value.description
  frequency                = each.value.frequency
  severity                 = each.value.severity
  target_resource_type     = each.value.target_resource_type
  target_resource_location = each.value.target_resource_location
  window_size              = each.value.window_size
  tags                     = each.value.tags

  # One of either criteria, dynamic_criteria or application_insights_web_test_location_availability_criteria must be specified.

  dynamic "criteria" {
    iterator = c
    for_each = each.value.criteria

    content {
      metric_namespace       = c.value.metric_namespace # Required
      metric_name            = c.value.metric_name      # Required
      aggregation            = c.value.aggregation      # Required
      operator               = c.value.operator         # Required
      threshold              = c.value.threshold        # Required
      skip_metric_validation = c.value.skip_metric_validation
      dynamic "dimension" {
        iterator = d
        for_each = c.value.dimension

        content {
          name     = d.value.name     # Required
          operator = d.value.operator # Required
          values   = d.value.values   # Required
        }
      }
    }
  }

  dynamic "dynamic_criteria" {
    iterator = dc
    for_each = each.value.dynamic_criteria

    content {
      metric_namespace         = dc.value.metric_namespace  # Required
      metric_name              = dc.value.metric_name       # Required
      aggregation              = dc.value.aggregation       # Required
      operator                 = dc.value.operator          # Required
      alert_sensitivity        = dc.value.alert_sensitivity # Required
      evaluation_total_count   = dc.value.evaluation_total_count
      evaluation_failure_count = dc.value.evaluation_failure_count
      ignore_data_before       = dc.value.ignore_data_before
      skip_metric_validation   = dc.value.skip_metric_validation
      dynamic "dimension" {
        iterator = d
        for_each = c.value.dimension

        content {
          name     = d.value.name     # Required
          operator = d.value.operator # Required
          values   = d.value.values   # Required
        }
      }
    }
  }

  dynamic "application_insights_web_test_location_availability_criteria" {
    iterator = aiwtlac
    for_each = each.value.application_insights_web_test_location_availability_criteria

    content {
      web_test_id           = aiwtlac.value.web_test_id           # Required
      component_id          = aiwtlac.value.component_id          # Required
      failed_location_count = aiwtlac.value.failed_location_count # Required
    }
  }

  dynamic "action" {
    iterator = a
    for_each = each.value.action

    content {
      action_group_id    = a.value.action_group_id # Required
      webhook_properties = a.value.webhook_properties
    }
  }
}
