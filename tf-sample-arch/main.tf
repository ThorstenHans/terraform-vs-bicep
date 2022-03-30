resource "azurerm_resource_group" "rg" {
  name     = "rg-tf-sample"
  location = var.location
  tags     = var.tags
}

module "sa" {
  source = "./storage-account"

  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  tags                = var.tags
}

output "primary_blob_endpoint" {
  value = module.sa.primary_blob_endpoint
}
