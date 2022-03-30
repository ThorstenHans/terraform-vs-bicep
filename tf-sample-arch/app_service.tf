
resource "azurerm_service_plan" "asp" {
  name                = "asp-tf-sample"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  os_type             = "Linux"
  sku_name            = "S1"
  tags                = var.tags
}

resource "azurerm_linux_web_app" "as" {
  name                = "as-tf-sample-webinar"
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.asp.id
  location            = var.location

  app_settings = {
    "WEBSITES_PORT" = "80"
  }
  site_config {
    always_on = true
    application_stack {
      docker_image     = "thorstenhans/gopher"
      docker_image_tag = var.image_tag
    }
  }
}
