#resource "azurerm_storage_account" "storage" {
 # name                     = var.storage_account_name
  #resource_group_name      = var.resource_group_name
  #location                 = var.location
  #account_tier             = "Standard"
  #account_replication_type = "LRS"
#}

#resource "azurerm_storage_container" "container" {
 # name                  = var.container_name
  # FIX: Changed from .sa.id to .storage.id
  #storage_account_id    = azurerm_storage_account.storage.id 
#}