provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg_new" {
  name     = var.rg-name
  location = var.location
}

resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-example"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg_new.location
  resource_group_name = azurerm_resource_group.rg_new.name
}