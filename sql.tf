resource "azurerm_mssql_server" "sql" {
  name                         = "sqlprodmt${random_string.suffix.result}"
  resource_group_name          = azurerm_resource_group.rg.name
  location                     = azurerm_resource_group.rg.location
  version                      = "12.0"
  administrator_login          = var.sql_admin_username
  administrator_login_password = var.sql_admin_password
  public_network_access_enabled = false
}

resource "azurerm_mssql_database" "db" {
  name           = "db-prod-app"
  server_id      = azurerm_mssql_server.sql.id
  sku_name       = "GP_S_Gen5_1"
  max_size_gb    = 5
  auto_pause_delay_in_minutes = 60
  min_capacity   = 0.5
}