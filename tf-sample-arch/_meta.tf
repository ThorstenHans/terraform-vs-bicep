terraform {
  required_providers {
    azurerm = {
      source  = "azurerm"
      version = "3.0.1"
    }
  }
}

provider "azurerm" {
  features {

  }
}


data "azurerm_client_config" "current" {

}
