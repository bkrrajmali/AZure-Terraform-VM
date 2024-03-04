resource "azurerm_subnet" "ncpl-internal" {
  name                 = "ncpl-internal"
  resource_group_name  = azurerm_resource_group.ncplrg.name
  virtual_network_name = azurerm_virtual_network.ncpl-network.name
  address_prefixes     = ["10.0.2.0/24"]
}