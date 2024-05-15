module "naming" {
  source   = "Azure/naming/azurerm"
  version  = "0.4.1"
  for_each = local.naming_params

  prefix                 = each.value.prefix
  suffix                 = each.value.suffix
  unique-include-numbers = each.value.unique-include-numbers
  unique-length          = each.value.unique-length
  unique-seed            = each.value.unique-seed
}
