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
| [azurerm_private_dns_a_record.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_a_record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azurerm_private_dns_a_record_params"></a> [azurerm\_private\_dns\_a\_record\_params](#input\_azurerm\_private\_dns\_a\_record\_params) | Object map for Azure Private DNS A Record module input parameters. | <pre>map(object({<br>    name                = string      # Required<br>    resource_group_name = string      # Required<br>    zone_name           = string      # Required<br>    ttl                 = number      # Required<br>    records             = set(string) # Required<br>    tags                = map(string)<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_private_dns_a_records"></a> [private\_dns\_a\_records](#output\_private\_dns\_a\_records) | An object containing the Private DNS A Records created by the module. |
<!-- markdown-table-prettify-ignore-end -->

<!-- END_TF_DOCS -->