locals {
  location = "eastus"
  env      = "tst1"
  project  = "edw1"

  # {env}-{caf}-{project}-{rand}
  naming_params = {
    edw_rg = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    edw_main_vnet = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    edw_private_endpoints_subnet = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    edw_linux_subnet = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    edw_postgres_subnet = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    edw_powrebi_subnet = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    edw_private_endpoint_blob = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    edw_private_endpoint_key_vault = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    edw_srv_plan_1 = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    edw_linux_function_app_1 = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    edw_storage_account = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    edw_storage_container = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    edw_blob_storage = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    edw_key_vault = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    edw_app_insights = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    edw_postgres_flexible_server = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    edw_postgres_flexible_database_1 = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    edw_private_endpoint_blob = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    edw_private_endpoint_key_vault = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    edw_private_endpoint_blob_nic = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    edw_private_endpoint_key_vault_nic = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
  }
}
