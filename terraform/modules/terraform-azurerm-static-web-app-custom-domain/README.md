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
| [azurerm_static_web_app_custom_domain.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/static_web_app_custom_domain) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azurerm_static_web_app_custom_domain_params"></a> [azurerm\_static\_web\_app\_custom\_domain\_params](#input\_azurerm\_static\_web\_app\_custom\_domain\_params) | Object map for Azure Static Web App Custom Domain module input parameters. | <pre>map(object({<br>    domain_name       = string # Required<br>    static_web_app_id = string # Required<br>    validation_type   = string # Required<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_static_web_app_custom_domains"></a> [static\_web\_app\_custom\_domains](#output\_static\_web\_app\_custom\_domains) | An object containing the Azure Static Web App Custom Domains created by the module. |
<!-- markdown-table-prettify-ignore-end -->

<!-- END_TF_DOCS -->