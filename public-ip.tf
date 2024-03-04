resource "azurerm_public_ip" "ncpl-public-ip" {
  name                = "NCPL_public-IP"
  resource_group_name = azurerm_resource_group.ncplrg.name
  location            = azurerm_resource_group.ncplrg.location
  allocation_method   = "Dynamic"

  tags = {
    environment = "Production"
  }
}