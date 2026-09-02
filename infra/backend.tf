terraform {
  backend "azurerm" {
    resource_group_name  = "rg-hussain-enterprise"
    storage_account_name = "tfstatehussain992"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}