terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "sohit-docker-vm-dont-delete"
    storage_account_name = "sohitstg1"
    container_name       = "sohittfstate"
    key                  = "dev.tfstate"
    tenant_id            = "ea9ca8b6-aa2d-4c4a-904a-cb93fd58a0b9"
    subscription_id      = "86cd11f5-4d26-4e93-bfa9-c0b7b2f44cc9"

  }
}

provider "azurerm" {
  features {}
  subscription_id = "86cd11f5-4d26-4e93-bfa9-c0b7b2f44cc9"
}
