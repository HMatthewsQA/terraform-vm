provider "azurerm" {
  features {}
}

module "azureresourcegroup" {
  source = "./ResourceGroup"
}

module "azurevirtualmachine" {
  source = "./VirtualMachine"
}

