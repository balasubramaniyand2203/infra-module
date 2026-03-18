variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "mysql_server_name" {
  type = string
}

variable "mysql_admin_username" {
  type = string
}

variable "mysql_administrator_login_password" {
  type      = string
  sensitive = true
}

variable "mysql_version" {
  type = string
}

variable "mysql_sku_name" {
  type = string
}

variable "mysql_storage_size_gb" {
  type = number
}

variable "mysql_backup_retention_days" {
  type = number
}

variable "firewall_rules" {
  description = "Map of rule names to IP addresses"
  type        = map(string)
  default     = {}
}