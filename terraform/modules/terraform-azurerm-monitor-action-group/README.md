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
| [azurerm_monitor_action_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_action_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azurerm_monitor_action_group_params"></a> [azurerm\_monitor\_action\_group\_params](#input\_azurerm\_monitor\_action\_group\_params) | Object map for Azure Monitor Action Group module input parameters. | <pre>map(object({<br>    name                = string # Required<br>    resource_group_name = string # Required<br>    short_name          = string # Required<br>    enabled             = bool<br>    location            = string<br>    tags                = map(string)<br><br>    arm_role_receiver = list(object({<br>      name                    = string # Required<br>      role_id                 = string # Required<br>      use_common_alert_schema = bool<br>    }))<br><br>    automation_runbook_receiver = list(object({<br>      name                    = string # Required<br>      automation_account_id   = string # Required<br>      runbook_name            = string # Required<br>      webhook_resource_id     = string # Required<br>      is_global_runbook       = bool   # Required<br>      service_uri             = string # Required<br>      use_common_alert_schema = bool<br>    }))<br><br>    azure_app_push_receiver = list(object({<br>      name          = string # Required<br>      email_address = string # Required<br>    }))<br><br>    azure_function_receiver = list(object({<br>      name                     = string # Required<br>      function_app_resource_id = string # Required<br>      function_name            = string # Required<br>      http_trigger_url         = string # Required<br>      use_common_alert_schema  = bool<br>    }))<br><br>    email_receiver = list(object({<br>      name                    = string # Required<br>      email_address           = string # Required<br>      use_common_alert_schema = bool<br>    }))<br><br>    event_hub_receiver = list(object({<br>      name                    = string # Required<br>      event_hub_name          = string<br>      event_hub_namespace     = string<br>      subscription_id         = string<br>      tenant_id               = string<br>      use_common_alert_schema = bool<br>    }))<br><br>    itsm_receiver = list(object({<br>      name                 = string # Required<br>      workspace_id         = string # Required<br>      connection_id        = string # Required<br>      ticket_configuration = string # Required<br>      region               = string # Required<br>    }))<br><br>    logic_app_receiver = list(object({<br>      name                    = string # Required<br>      resource_id             = string # Required<br>      callback_url            = string # Required<br>      use_common_alert_schema = bool<br>    }))<br><br>    sms_receiver = list(object({<br>      name         = string # Required<br>      country_code = string # Required<br>      phone_number = string # Required<br>    }))<br><br>    voice_receiver = list(object({<br>      name         = string # Required<br>      country_code = string # Required<br>      phone_number = string # Required<br>    }))<br><br>    webhook_receiver = list(object({<br>      name                    = string # Required<br>      service_uri             = string # Required<br>      use_common_alert_schema = bool<br>      aad_auth = list(object({<br>        object_id      = string # Required<br>        identifier_uri = string<br>        tenant_id      = string<br>      }))<br>    }))<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_monitor_action_groups"></a> [monitor\_action\_groups](#output\_monitor\_action\_groups) | An object containing the Azure Monitor Action Groups created by the module. |
<!-- markdown-table-prettify-ignore-end -->

<!-- END_TF_DOCS -->