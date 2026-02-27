output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "sql_server_name" {
  value = azurerm_mssql_server.sql.name
}

output "backend_app_name" {
  value = azurerm_linux_web_app.backend.name
}

output "private_endpoint_ip" {
  value = azurerm_private_endpoint.sql_pe.private_service_connection[0].private_ip_address
}