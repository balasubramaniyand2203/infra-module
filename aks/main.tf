
resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name           = "default"
    node_count     = var.node_count
    vm_size        = var.vm_size
    vnet_subnet_id = var.vnet_subnet_id  # FIXED: Now uses the input variable
  }
  network_profile {
    network_plugin     = "azure"      # Use 'azure' for Azure CNI or 'kubenet'
    service_cidr       = "172.16.0.0/16"
    dns_service_ip     = "172.16.0.10"
  }
  identity {
    type = "SystemAssigned"
  }
}