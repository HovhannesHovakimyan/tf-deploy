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
| [azurerm_application_insights_web_test.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights_web_test) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azurerm_application_insights_web_test_params"></a> [azurerm\_application\_insights\_web\_test\_params](#input\_azurerm\_application\_insights\_web\_test\_params) | Object map for Azure Application Insights Web Test module input parameters. | <pre>map(object({<br>    name                    = string       # Required<br>    resource_group_name     = string       # Required<br>    application_insights_id = string       # Required<br>    location                = string       # Required<br>    kind                    = string       # Required<br>    geo_locations           = list(string) # Required<br>    configuration           = string       # Required<br>    frequency               = number<br>    timeout                 = number<br>    enabled                 = bool<br>    retry_enabled           = bool<br>    description             = string<br>    tags                    = map(string)<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_application_insights_web_tests"></a> [application\_insights\_web\_tests](#output\_application\_insights\_web\_tests) | An object containing data created by the Application Insights Web Tests module. |
<!-- markdown-table-prettify-ignore-end -->

<!-- END_TF_DOCS -->