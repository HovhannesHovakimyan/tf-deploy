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
| [azurerm_subnet_network_security_group_association.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_network_security_group_association) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azurerm_subnet_network_security_group_association_params"></a> [azurerm\_subnet\_network\_security\_group\_association\_params](#input\_azurerm\_subnet\_network\_security\_group\_association\_params) | Object map for Azure Subnet Network Security Group Association module input parameters. | <pre>map(object({<br>    network_security_group_id = string # Required<br>    subnet_id                 = string # Required<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subnet_nsg_associations"></a> [subnet\_nsg\_associations](#output\_subnet\_nsg\_associations) | An object containing the Azure Subnet Network Security Group Associations created by the module. |
<!-- markdown-table-prettify-ignore-end -->

<!-- END_TF_DOCS -->