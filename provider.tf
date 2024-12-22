terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.1"
    }

  }

}

provider "azurerm" {
  features {

  }
  subscription_id = "cc39b8c9-7cc9-49d0-98c3-2a043fb93dac"
}
