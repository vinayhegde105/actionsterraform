provider "azurerm" {
  features {}
}

terraform {
  required_providers {
      azurerm = {
          source = "hashicorp/azurerm"
          version = "2.46.0"
      }
  }
}
resource "azurerm_resource_group" "vth" {
  name     = "vth-resources"
  location = "West Europe"
}
terraform {
  backend "azurerm" {
    resource_group_name  = "tamopstfstates"
    storage_account_name = "vthtamopstf"
    container_name       = "tfstate-actions"
    key                  = "terraform.tfstate"
  }
}
