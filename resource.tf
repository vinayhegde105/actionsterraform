resource "azurerm_resource_group" "vth" {
  name     = "vth-resources"
  location = "West Europe"
}
terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate"
    storage_account_name = "tfstaeactions"
    container_name       = "actions-tfstate"
    key                  = "terraform.tfstate"
  }
}
