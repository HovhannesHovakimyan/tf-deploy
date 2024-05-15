locals {
  location = "eastus"
  env      = "tst1"
  project  = "ccp1"

  # {env}-{caf}-{project}-{rand}
  naming_params = {
    ccp_rg = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    ccp_aks_node_rg = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    ccp_main_aks = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    role_assignment_main_aks = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    user_assigned_identity_main_aks = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    ccp_main_aks_role_assignment = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    ccp_main_vnet = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    ccp_aks_pods_subnet = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    ccp_aks_nodes_subnet = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    ccp_private_endpoints_subnet = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    ccp_postgres_subnet = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    ccp_static_web_app_admin = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    ccp_static_web_app_scanner = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    ccp_key_vault = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    ccp_storage_account = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    ccp_storage_container = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    ccp_blob_storage = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    ccp_private_endpoint_main_aks = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    ccp_private_endpoint_blob = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    ccp_private_endpoint_key_vault = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    ccp_postgres_flexible_server = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    ccp_postgres_flexible_database_1 = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    ccp_private_endpoint_main_aks_nic = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    ccp_private_endpoint_blob_nic = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
    ccp_private_endpoint_key_vault_nic = {
      prefix                 = [local.env]
      suffix                 = [local.project]
      unique-include-numbers = false
      unique-length          = 3
      unique-seed            = null
    }
  }
}
