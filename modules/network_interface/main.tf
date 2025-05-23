resource "azurerm_network_interface" "network_interface" {
  name                = var.nic
  location            = var.rgloc
  resource_group_name = var.rgname

  ip_configuration {
    name                          = "internal"
    subnet_id                     =  var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}