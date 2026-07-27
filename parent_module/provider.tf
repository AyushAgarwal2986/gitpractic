terraform {
  required_providers {
     azurerm ={
      version = "4.80.0"
      source  = "hashicorp/azurerm"
  }
}
backend "azurerm"{
  resource_group_name  = "rg_parent_child"
  storage_account_name = "ayush_storage"  
  container_name       = "ayush_container"
  key                  = "dev.tfstate"
}
}

provider "azurerm" {
  features {}
}