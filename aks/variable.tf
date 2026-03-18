variable "cluster_name" {
  type    = string
  default = "dev-bcc-aks"
}

variable "location" {
  type    = string
  default = "South India"
}

variable "resource_group_name" {
  type    = string
}

variable "node_count" {
  type    = number
  # SET TO 1: To fit your 2-vCPU subscription limit
  default = 1 
}

variable "vm_size" {
  type    = string
  # SET TO D2s_v3: To satisfy Azure's 2-core minimum for system pools
  default = "Standard_D2s_v3" 
}

variable "dns_prefix" {
  type    = string
  default = "aks-dns"
}

variable "vnet_subnet_id" {
  description = "The ID of the Subnet where the AKS nodes will reside."
  type        = string
}

variable "address_space" {
  description = "The address space for the VNet"
  type        = list(string)
}

# FILE: modules/aks/variable.tf
variable "firewall_rules" {
  type        = list(string)  # <--- THIS MUST BE LIST(STRING)
  description = "List of allowed IP addresses"
  default     = []
}