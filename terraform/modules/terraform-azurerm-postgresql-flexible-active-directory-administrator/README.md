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
| [azurerm_postgresql_flexible_server_active_directory_administrator.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/postgresql_flexible_server_active_directory_administrator) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azurerm_postgresql_flexible_server_active_directory_administrator_params"></a> [azurerm\_postgresql\_flexible\_server\_active\_directory\_administrator\_params](#input\_azurerm\_postgresql\_flexible\_server\_active\_directory\_administrator\_params) | Object map for Azure Postgresql Flexible Server Active Directory Administrator module input parameters. | <pre>map(object({<br>    server_name         = string # Required<br>    resource_group_name = string # Required<br>    object_id           = string # Required<br>    tenant_id           = string # Required<br>    principal_name      = string # Required<br>    principal_type      = string # Required<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_postgresql_flexible_server_active_directory_administrator"></a> [postgresql\_flexible\_server\_active\_directory\_administrator](#output\_postgresql\_flexible\_server\_active\_directory\_administrator) | An object containing the Azure Postgresql Flexible Server Active Directory Administrators created by the module. |
<!-- markdown-table-prettify-ignore-end -->

<!-- END_TF_DOCS -->