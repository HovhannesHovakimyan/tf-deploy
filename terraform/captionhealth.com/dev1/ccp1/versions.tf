terraform {
  required_version = ">= 1.6"

  required_providers {
    azurecaf = {
      source  = "aztfmod/azurecaf"
      version = "1.2.28"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.9"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.47"
    }
  }

  backend "azurerm" {
    tenant_id            = "f7975858-e584-4011-9388-12c7a0bc176f"
    subscription_id      = "dd3864be-25c5-4fd3-8e25-72dcbc077d5b"
    resource_group_name  = "core-gbl-rg-eastus"
    storage_account_name = "coregblsteastustfstate"
    container_name       = "terraform-state"
    key                  = "dev1.ccp1.terraform.tfstate"

    use_oidc = true
  }
}
