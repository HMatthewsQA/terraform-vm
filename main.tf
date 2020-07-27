provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "uksouth"
}

module "azurevirtualmachine" {
  source   = "./VirtualMachine"
  location = azurerm_resource_group.example.location
  name     = azurerm_resource_group.example.name
  size     = "Standard_D1_v2"
  user     = "adminuser"
}

