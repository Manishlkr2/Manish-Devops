
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.38.1"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "c316f505-7597-4175-b5db-d2949009d506"
}
resource "azurerm_resource_group" "Manish" {
  name     = "rg-Manish1"
  location = "Australia East"
}
resource "azurerm_storage_account" "Stg" {
  name                     = "manishstg"
  resource_group_name      = "rg-Manish1"
  location                 = "Australia East"
  account_tier             = "Standard"
  account_replication_type = "LRS"

}