resource "azurerm_resource_group" "my-vnet" {
  name     = "my-vnet-111"
  location = "East US"
}
resource "azurerm_virtual_network" "my-vpc" {
  name                = "my-vpc-111"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.my-vnet.location
  resource_group_name = azurerm_resource_group.my-vnet.name
}

resource "azurerm_subnet" "my-subnet" {
  name                 = "my-subnet-111"
  resource_group_name  = azurerm_resource_group.my-vnet.name
  virtual_network_name = azurerm_virtual_network.my-vpc.name
  address_prefixes     = ["10.0.2.0/24"]
}
