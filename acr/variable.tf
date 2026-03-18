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
  type    = string
  default = "Basic"
}

variable "acr_admin_enabled" {
  type    = bool
  default = false
}

# --- ADD THIS BLOCK TO FIX THE ERROR ---
variable "aks_principal_id" {
  description = "The Principal ID of the AKS Kubelet Identity to allow image pulls"
  type        = string
}
