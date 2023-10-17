terraform {
  backend "azurerm" {
    resource_group_name  = "str-grp-8623"
    storage_account_name = "str8623"
    container_name       = "demo-container"
    key                  = "vm-terraform.tfstate"
  }
}
