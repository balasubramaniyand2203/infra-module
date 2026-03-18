resource "azurerm_mysql_flexible_server" "mysql" {
  name                = var.mysql_server_name
  resource_group_name = var.resource_group_name
  location            = var.location

  administrator_login          = var.mysql_admin_username
  administrator_password       = var.mysql_administrator_login_password
  version                      = var.mysql_version
  sku_name                     = var.mysql_sku_name

  storage {
    size_gb = var.mysql_storage_size_gb
  }

  backup_retention_days = var.mysql_backup_retention_days
}

resource "azurerm_mysql_flexible_server_firewall_rule" "fw" {
  for_each            = var.firewall_rules
  name                = each.key
  
  # Replace server_id with these two:
  resource_group_name = var.resource_group_name
  server_name         = azurerm_mysql_flexible_server.mysql.name

  start_ip_address    = each.value
  end_ip_address      = each.value
}