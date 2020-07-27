provider "azurerm" {
  features {}
}

resource "azureresourcegroup" "example" {
  name     = "example-resources"
  location = "uksouth"
}

module "azurevirtualmachine" {
  source   = "./VirtualMachine"
  location = azureresourcegroup.example.location
  name     = azureresourcegroup.example.name
  size     = "Standard_D1_v2"
  user     = "adminuser"
}

