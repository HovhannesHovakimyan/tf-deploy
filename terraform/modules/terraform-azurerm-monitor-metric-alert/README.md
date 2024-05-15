<!-- BEGIN_TF_DOCS -->
<!-- markdown-table-prettify-ignore-start -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_monitor_metric_alert.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azurerm_monitor_metric_alert_params"></a> [azurerm\_monitor\_metric\_alert\_params](#input\_azurerm\_monitor\_metric\_alert\_params) | Object map for Azure Monitor Metric Alert module input parameters. | <pre>map(object({<br>    name                     = string      # Required<br>    resource_group_name      = string      # Required<br>    scopes                   = set(string) # Required<br>    enabled                  = bool<br>    auto_mitigate            = bool<br>    description              = string<br>    frequency                = string<br>    severity                 = number<br>    target_resource_type     = string<br>    target_resource_location = string<br>    window_size              = string<br>    tags                     = map(string)<br><br>    criteria = list(object({<br>      metric_namespace       = string # Required<br>      metric_name            = string # Required<br>      aggregation            = string # Required<br>      operator               = string # Required<br>      threshold              = number # Required<br>      skip_metric_validation = bool<br>      dimension = list(object({<br>        name     = string       # Required<br>        operator = string       # Required<br>        values   = list(string) # Required<br>      }))<br>    }))<br><br>    dynamic_criteria = list(object({<br>      metric_namespace         = string # Required<br>      metric_name              = string # Required<br>      aggregation              = string # Required<br>      operator                 = string # Required<br>      alert_sensitivity        = string # Required<br>      evaluation_total_count   = number<br>      evaluation_failure_count = number<br>      ignore_data_before       = string<br>      skip_metric_validation   = bool<br>      dimension = list(object({<br>        name     = string       # Required<br>        operator = string       # Required<br>        values   = list(string) # Required<br>      }))<br>    }))<br><br>    application_insights_web_test_location_availability_criteria = list(object({<br>      web_test_id           = string # Required<br>      component_id          = string # Required<br>      failed_location_count = number # Required<br>    }))<br><br>    action = list(object({<br>      action_group_id    = string # Required<br>      webhook_properties = map(string)<br>    }))<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_monitor_metric_alerts"></a> [monitor\_metric\_alerts](#output\_monitor\_metric\_alerts) | An object containing the Azure Monitor Metric Alert created by the module. |
<!-- markdown-table-prettify-ignore-end -->

<!-- END_TF_DOCS -->