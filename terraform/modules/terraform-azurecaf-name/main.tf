resource "azurecaf_name" "this" {
  for_each = var.azurecaf_name_params

  name     = each.value.name
  prefixes = each.value.prefixes
  # suffixes       = lookup(var.azurecaf_name_params, each.value.suffixes, null)
  random_length = each.value.random_length
  # random_seed    = lookup(var.azurecaf_name_params, each.value.random_seed, null)
  resource_type = each.value.resource_type
  # resource_types = lookup(var.azurecaf_name_params, each.value.resource_types, null)
  # separator      = lookup(var.azurecaf_name_params, each.value.separator, null)
  # clean_input    = lookup(var.azurecaf_name_params, each.value.clean_input, null)
  # passthrough    = lookup(var.azurecaf_name_params, each.value.passthrough, null)
  # use_slug       = lookup(var.azurecaf_name_params, each.value.use_slug, null)
}
