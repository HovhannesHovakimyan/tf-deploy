module "monitor_smart_detector_alert_rule" {
  source  = "app.terraform.io/captionhealth/monitor-smart-detector-alert-rule/azurerm"
  version = "1.0.0"

  azurerm_monitor_smart_detector_alert_rule_params = {
    monitor_smart_detector_alert_rule_1 = {
      name                = "example-smart-detector-alert-rule"                                           # Required
      resource_group_name = module.resource_group.resource_groups["rg_1"].name                            # Required
      detector_type       = "FailureAnomaliesDetector"                                                    # Required
      scope_resource_ids  = [module.application_insights.application_insights["application_insights"].id] # Required
      severity            = "Sev0"                                                                        # Required
      frequency           = "PT1M"
      description         = null
      enabled             = true
      throttling_duration = null
      tags                = module.tags.tags

      action_group = [ # Required
        {
          ids             = [module.monitor_action_group.monitor_action_groups["monitor_action_group_1"].id] # Required
          email_subject   = null
          webhook_payload = null
        }
      ]
    }
  }
}
