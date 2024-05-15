module "monitor_metric_alert" {
  source  = "app.terraform.io/captionhealth/monitor-metric-alert/azurerm"
  version = "1.0.0"

  azurerm_monitor_metric_alert_params = {
    monitor_metric_alert_1 = {
      name                     = "example-metricalert"                                             # Required
      resource_group_name      = module.resource_group_name.resource_group_names["main_rg"].name   # Required
      scopes                   = [module.storage_account.storage_accounts["storage_account_1"].id] # Required
      enabled                  = true
      auto_mitigate            = null
      description              = "Action will be triggered when Transactions count is greater than 50."
      frequency                = null
      severity                 = null
      target_resource_type     = null
      target_resource_location = null
      window_size              = null
      tags                     = null

      # One of either criteria, dynamic_criteria or application_insights_web_test_location_availability_criteria must be specified.

      criteria = [
        {
          metric_namespace       = "Microsoft.Storage/storageAccounts" # Required
          metric_name            = "Transactions"                      # Required
          aggregation            = "Total"                             # Required
          operator               = "GreaterThan"                       # Required
          threshold              = 50                                  # Required
          skip_metric_validation = null

          dimension = [
            {
              name     = "ApiName" # Required
              operator = "Include" # Required
              values   = ["*"]     # Required
            }
          ]
        }
      ]

      dynamic_criteria = [
        # {
        #   metric_namespace         = "Microsoft.Storage/storageAccounts" # Required
        #   metric_name              = "Transactions"                      # Required
        #   aggregation              = "Total"                             # Required
        #   operator                 = "LessThan"                          # Required
        #   alert_sensitivity        = "Low"                               # Required
        #   evaluation_total_count   = null
        #   evaluation_failure_count = null
        #   ignore_data_before       = null
        #   skip_metric_validation   = null

        #   dimension = [
        #     {
        #       name     = "ApiName" # Required
        #       operator = "Include" # Required
        #       values   = ["*"]     # Required
        #     }
        #   ]
        # }
      ]

      application_insights_web_test_location_availability_criteria = [
        # {
        #   web_test_id           = module.application_insights_web_test.application_insights_web_tests["web_test_1"].id # Required
        #   component_id          = module.application_insights.application_insights["application_insights"].id          # Required
        #   failed_location_count = 1                                                                                    # Required
        # }
      ]

      action = [
        # {
        #   action_group_id    = module.monitor_action_group.monitor_action_groups["monitor_action_group_1"].id # Required
        #   webhook_properties = null
        # }
      ]
    }
  }
}
