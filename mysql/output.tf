output "mysql_server_name" {
  value = azurerm_mysql_flexible_server.mysql.name
}

output "firewall_rule_ids" {
  description = "List of IDs for the created firewall rules"
  value       = [for rule in azurerm_mysql_flexible_server_firewall_rule.fw : rule.id]
}