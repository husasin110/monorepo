terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
}

import {
  to = azurerm_resource_group.main
  id = "/subscriptions/cf623437-cc05-43bb-b63b-dfd5991c17b4/resourceGroups/rg-hussain-enterprise"
}