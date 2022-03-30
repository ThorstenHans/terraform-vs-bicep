output "website_fqdn" {
  value       = azurerm_linux_web_app.as.default_hostname
  description = "The FQDN associated with the Azure App Service"
}
