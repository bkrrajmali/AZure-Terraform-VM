resource "azurerm_network_interface" "ncpl-nic" {
  name                = "azurerm_virtual_network.ncpl-network.name-nic"
  location            = azurerm_resource_group.ncplrg.location
  resource_group_name = azurerm_resource_group.ncplrg.name

  ip_configuration {
    name                          = "interanl"
    subnet_id                     = azurerm_subnet.ncpl-internal.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.ncpl-public-ip.id
  }
}