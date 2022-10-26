terraform {
  required_providers {
    azapi = {
      source = "Azure/azapi"
    }
  }

  experiments = [
    module_variable_optional_attrs
  ]
}

provider "azapi" {
}

provider "azurerm" {
  features {}
}