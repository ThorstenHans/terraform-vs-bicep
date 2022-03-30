

resource "azurerm_mssql_server" "sqlsrv" {
  name                         = "sqlservertfsample"
  resource_group_name          = azurerm_resource_group.rg.name
  location                     = var.location
  version                      = "12.0"
  minimum_tls_version          = "1.2"
  administrator_login          = "sampleaccount"
  administrator_login_password = var.sql_admin_password
  tags                         = var.tags
}

resource "azurerm_mssql_database" "sql" {
  name        = "sql-tf-sample"
  server_id   = azurerm_mssql_server.sqlsrv.id
  create_mode = "Default"
  sku_name    = "Basic"
  tags        = var.tags
}
