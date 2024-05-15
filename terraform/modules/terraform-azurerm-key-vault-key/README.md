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
| [azurerm_key_vault_key.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azurerm_key_vault_key_params"></a> [azurerm\_key\_vault\_key\_params](#input\_azurerm\_key\_vault\_key\_params) | Object map for Azure Key Vault Key module input parameters. | <pre>map(object({<br>    name            = string # Required<br>    key_vault_id    = string # Required<br>    key_type        = string # Required<br>    key_size        = number<br>    curve           = string<br>    key_opts        = list(string) # Required<br>    not_before_date = string<br>    expiration_date = string<br>    tags            = map(string)<br><br>    rotation_policy = list(object({<br>      expire_after         = string<br>      notify_before_expiry = string<br>      automatic = list(object({<br>        time_after_creation = string<br>        time_before_expiry  = string<br>      }))<br>    }))<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_azurerm_key_vault_keys"></a> [azurerm\_key\_vault\_keys](#output\_azurerm\_key\_vault\_keys) | An object containing the Key Vault Keys created by the module. |
<!-- markdown-table-prettify-ignore-end -->

<!-- END_TF_DOCS -->