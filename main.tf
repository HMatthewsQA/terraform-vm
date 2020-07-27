provider "azurerm" {
  features {}
}

module "azureresourcegroup" {
  source = "./ResourceGroup"
}

module "azurevirtualmachine" {
  source = "./VirtualMachine"
}

data "azurerm_public_ip" "example" {
  name                = azurerm_public_ip.example.name
  resource_group_name = azurerm_linux_virtual_machine.example.resource_group_name
}