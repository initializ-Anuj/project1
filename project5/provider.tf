terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.51.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "5ba58d84-3190-4ad1-a16a-893c7d8e480d"
  client_id       = "5d426a95-656f-422f-b36f-24efdb3d750f"
  client_secret   = "JKg8Q~8e2c0f1MiSghdhORMtNYOc3gdsptJO-b_B"
  tenant_id       = "91862f9f-a1be-4ea5-9727-5356eaa61fb2"
  features {

  }
}
