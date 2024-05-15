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
| [azurerm_monitor_smart_detector_alert_rule.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_smart_detector_alert_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azurerm_monitor_smart_detector_alert_rule_params"></a> [azurerm\_monitor\_smart\_detector\_alert\_rule\_params](#input\_azurerm\_monitor\_smart\_detector\_alert\_rule\_params) | Object map for Azure Monitor Smart Detector Alert Rule module input parameters. | <pre>map(object({<br>    name                = string      # Required<br>    resource_group_name = string      # Required<br>    detector_type       = string      # Required<br>    scope_resource_ids  = set(string) # Required<br>    severity            = string      # Required<br>    frequency           = string<br>    description         = string<br>    enabled             = bool<br>    throttling_duration = string<br>    tags                = map(string)<br><br>    action_group = list(object({    # Required<br>      ids             = set(string) # Required<br>      email_subject   = string<br>      webhook_payload = string<br>    }))<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_monitor_smart_detector_alert_rules"></a> [monitor\_smart\_detector\_alert\_rules](#output\_monitor\_smart\_detector\_alert\_rules) | An object containing the Azure Monitor Smart Detector Alert Rules created by the module. |
<!-- markdown-table-prettify-ignore-end -->

<!-- END_TF_DOCS -->