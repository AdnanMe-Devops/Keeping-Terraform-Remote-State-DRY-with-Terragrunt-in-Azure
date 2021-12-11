terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.40.0"
    }
  }
  backend "azurerm" {}

}

provider "azurerm" {
  features {}
}

#Create virtual network
resource "azurerm_virtual_network" "vnet1" {
  name                = "vnet-dev-westus-001"
  address_space       = ["10.0.0.0/16"]
  location            = "westus"
  resource_group_name = "cal-472-74"
}

# Create subnet
resource "azurerm_subnet" "subnet1" {
  name                 = "snet-dev-westus-001"
  resource_group_name  = "cal-472-74"
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = ["10.0.0.0/24"]
}

-----Each main.tf file in the child folders contains an empty azurerm backend block:
This makes the remote state configuration much easier to maintain since all the configuration settings are maintained in a single file at the root of the directory.
