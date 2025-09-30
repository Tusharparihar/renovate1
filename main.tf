terraform {
  required_version = ">= 1.5.0"

  required_providers {
    # Specify the AzureRM provider
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0" # Renovate will target this version constraint
    }
  }
}

# The required features block for azurerm provider
provider "azurerm" {
  features {}
}

# Example resource
resource "azurerm_resource_group" "rg" {
  name     = "rg-renovate-test"
  location = "East US"
}
