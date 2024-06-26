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
| [azurerm_application_insights.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azurerm_application_insights_params"></a> [azurerm\_application\_insights\_params](#input\_azurerm\_application\_insights\_params) | Object map for Azure Application Insights module input parameters. | <pre>map(object({<br>    name                                  = string # Required<br>    location                              = string # Required<br>    resource_group_name                   = string # Required<br>    application_type                      = string # Required<br>    daily_data_cap_in_gb                  = number<br>    daily_data_cap_notifications_disabled = bool<br>    retention_in_days                     = number<br>    sampling_percentage                   = number<br>    disable_ip_masking                    = bool<br>    workspace_id                          = string<br>    local_authentication_disabled         = bool<br>    internet_ingestion_enabled            = bool<br>    internet_query_enabled                = bool<br>    force_customer_storage_for_profiler   = bool<br>    tags                                  = map(string)<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_application_insights"></a> [application\_insights](#output\_application\_insights) | An object containing data created by the Application Insights module. |
<!-- markdown-table-prettify-ignore-end -->

<!-- END_TF_DOCS -->