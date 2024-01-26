terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.75"
    }
    azurecaf = {
      source  = "aztfmod/azurecaf"
      version = "2.0.0-preview3"
    }
  }
  required_version = ">= 1.6"

  backend "azurerm" {
    tenant_id            = "f7975858-e584-4011-9388-12c7a0bc176f" # Default Directory
    subscription_id      = "dd3864be-25c5-4fd3-8e25-72dcbc077d5b" # Azure Subscription 1
    resource_group_name  = "global-rg"
    storage_account_name = "chrgglobalyoeastus"
    container_name       = "terraform-state"
    key                  = "dev.terraform.tfstate"
  }
}
