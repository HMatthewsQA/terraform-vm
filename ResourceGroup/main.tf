resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = var.location
}

data "resource_group_name" "example" {
  name                = azurerm_resource_group.example.name
  resource_group_name = azurerm_resource_group.example.resource_group_name
}