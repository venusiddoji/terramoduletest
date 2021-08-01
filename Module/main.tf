provider "azurerm" {
    features {}
   
   }

resource "azurerm_resource_group" "rgname" {
    name = "${var.resource_group}"
    location = "${var.location}"
  }

  resource "azurerm_virtual_network" "vnetname" {
    name = "${var.vnet}"
    location = "${azurerm_resource_group.rgname.location}"
    resource_group_name = "${var.resource_group}"
    address_space = ["${var.address_space}"]
  }

  resource "azurerm_subnet" "sub1" {
      name = "${var.subnet_nametest[count.index]}"
      resource_group_name = "${azurerm_resource_group.rgname.name}"
      virtual_network_name = "${var.vnet}"
      address_prefixes = ["${var.sub_prefix[count.index]}"]
      count = "${length(var.subnet_nametest)}"

  }

