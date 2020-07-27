provider "azurerm" {
  features {}
}

module "azureresourcegroup" {
  source   = "./ResourceGroup"
  location = "uksouth"
  name     = "example-resources"
}

module "azurevirtualmachine" {
  source   = "./VirtualMachine"
  location = "uksouth"
  name     = "example-resources"
  size     = "Standard_D1_v2"
  user     = "adminuser"
}

