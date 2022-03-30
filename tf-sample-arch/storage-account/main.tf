terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}

resource "azurerm_storage_account" "sa" {
  name = "satfsample2022"
  resource_group_name = var.resource_group_name
  account_kind = "StorageV2"
  account_tier = "Standard"
  account_replication_type = "LRS"
  access_tier = "Hot"
  
  location = var.location
  tags = var.tags
}


variable "resource_group_name" {
  type = string
}

variable "location" {
    type = string
}

variable "tags" {
    type = map(string)
}
output "primary_blob_endpoint" {
    value = azurerm_storage_account.sa.primary_blob_endpoint  
}
