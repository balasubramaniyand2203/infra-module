variable "location" {
  description = "The Azure region where the ACR will be created"
  type        = string
}

variable "resource_group" {
  type = string
}

variable "acr_name" {
  type = string
}

variable "acr_sku" {
  type = string
}

variable "acr_admin_enabled" {
  type = bool
}