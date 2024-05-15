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
| [azurerm_user_assigned_identity.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/user_assigned_identity) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azurerm_user_assigned_identity_params"></a> [azurerm\_user\_assigned\_identity\_params](#input\_azurerm\_user\_assigned\_identity\_params) | Object map for Azure User Assigned Identity module input parameters. | <pre>map(object({<br>    location            = string # Required<br>    name                = string # Required<br>    resource_group_name = string # Required<br>    tags                = map(string)<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_user_assigned_identities"></a> [user\_assigned\_identities](#output\_user\_assigned\_identities) | An object containing the Azure User Assigned Identities created by the module. |
<!-- markdown-table-prettify-ignore-end -->

<!-- END_TF_DOCS -->