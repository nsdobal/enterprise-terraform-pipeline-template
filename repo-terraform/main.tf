terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {

    for_each = {
        nd-rg1 = "centralindia"
        nd-rg2 = "eastus"
    }
  name     = each.key
  location = each.value
}