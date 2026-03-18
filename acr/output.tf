output "acr_login_server" {
  value = azurerm_container_registry.acr.login_server
}

output "acr_id" {
  value = azurerm_container_registry.acr.id
}
output "kubelet_identity_id" {
  description = "The Object ID of the user-assigned identity used by the AKS Kubelet"
  # Replace 'aks' with the actual name from your resource block
  value = azurerm_kubernetes_cluster.aks.kubelet_identity[0].object_id
}
