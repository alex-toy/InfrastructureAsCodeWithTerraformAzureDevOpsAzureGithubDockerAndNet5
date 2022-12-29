# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "alexeirg"
  location = "francecentral"
}

resource "azurerm_container_group" "tf_cg_sampleapi" {
  name = "cg_sampleapi"
  location = azurerm_resource_group.tf_cg_sampleapi.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_address_type = "public"
  
}

