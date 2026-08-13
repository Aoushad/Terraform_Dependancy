resource "azurerm_resource_group" "rg" {
  name     = "RG-Aoushad"
  location = "East US"
}
resource "azurerm_storage_account" "stg" {
  # depends_on              = [azurerm_resource_group.rg]
  name                     = "stgaccountaoushad"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
