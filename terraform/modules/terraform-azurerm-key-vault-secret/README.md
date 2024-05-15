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
| [azurerm_key_vault_secret.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azurerm_key_vault_secret_params"></a> [azurerm\_key\_vault\_secret\_params](#input\_azurerm\_key\_vault\_secret\_params) | Object map for Azure Key Vault Secret module input parameters. | <pre>map(object({<br>    name            = string # Required<br>    value           = string # Required, the value will be automatically encrypted.<br>    key_vault_id    = string # Required<br>    content_type    = string<br>    not_before_date = string<br>    expiration_date = string<br>    tags            = map(string)<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key_vault_secrets"></a> [key\_vault\_secrets](#output\_key\_vault\_secrets) | An object containing the Key Vault Secrets created by the module. |
<!-- markdown-table-prettify-ignore-end -->

<!-- END_TF_DOCS -->