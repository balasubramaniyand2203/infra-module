
  output "kube_config" {
    value = azurerm_kubernetes_cluster.aks_cluster.kube_config
    sensitive = true  
  }

output "used_subnet_id" {
  value = var.vnet_subnet_id # ✅ This uses the variable defined in AKS
}

# modules/aks/output.tf

output "aks_cluster_name" {
  description = "The name of the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks_cluster.name
}

output "aks_cluster_location" {
  description = "The location of the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks_cluster.location
}