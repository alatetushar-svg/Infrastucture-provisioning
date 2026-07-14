terraform {
  backend "azurerm" {
    resource_group_name  = "Prod-Terraform-Infra"
    storage_account_name = "terraformprodstorage"
    container_name       = "terraformprodinfra"
    key                  = "terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }
}
provider "azurerm" {
  features {}
}