resource "azurerm_resource_group" "str-group" {
  name     = "str-grp-8623"
  location = "East US"
}

resource "azurerm_storage_account" "str-acc" {
  name                     = "str8623"
  location                 = "East US"
  resource_group_name      = azurerm_resource_group.str-group.name
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
resource "azurerm_storage_container" "str-con" {
  name                  = "demo-container"
  storage_account_name  = azurerm_storage_account.str-acc.name
  container_access_type = "private"
}
resource "azurerm_storage_blob" "str-blob" {
  name                   = "sample.txt"
  storage_account_name   = azurerm_storage_account.str-acc.name
  storage_container_name = azurerm_storage_container.str-con.name
  type                   = "Block"
  source                 = "sample.txt"
}
