output "aks_cluster_name" {
  description = "The name of the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.name
}

output "aks_cluster_id" {
  description = "The ID of the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.id
}

# --- CRITICAL: This is the ID needed for the ACR Role Assignment ---
output "kubelet_identity_id" {
  description = "The Object ID of the user-assigned identity used by the AKS Kubelet"
  value       = azurerm_kubernetes_cluster.aks.kubelet_identity[0].object_id
}
