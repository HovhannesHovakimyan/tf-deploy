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
| [azurerm_postgresql_flexible_server_database.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/postgresql_flexible_server_database) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azurerm_postgresql_flexible_server_database_params"></a> [azurerm\_postgresql\_flexible\_server\_database\_params](#input\_azurerm\_postgresql\_flexible\_server\_database\_params) | Object map for Azure Postgresql Flexible Server Database module input parameters. | <pre>map(object({<br>    name      = string # Required<br>    server_id = string # Required<br>    charset   = string<br>    collation = string<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_postgresql_flexible_server_databases"></a> [postgresql\_flexible\_server\_databases](#output\_postgresql\_flexible\_server\_databases) | An object containing the Azure Postgresql Flexible Server Databases created by the module. |
<!-- markdown-table-prettify-ignore-end -->

<!-- END_TF_DOCS -->