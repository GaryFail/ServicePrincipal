terraform {
  required_providers {
    azurerm = {
      version = "2.41.0"
      source  = "hashicorp/azurerm"
    }

    azuread = {
      version = "1.2.2"
      source  = "hashicorp/azuread"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "azuread" {

}