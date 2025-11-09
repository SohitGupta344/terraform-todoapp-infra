terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "sohit-docker-vm-dont-delete"
    storage_account_name = "sohitstg"
    container_name       = "sohittfstate"
    key                  = "dev.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "3130fe23-dc28-48ba-a8e3-43702c2970a2"
}
