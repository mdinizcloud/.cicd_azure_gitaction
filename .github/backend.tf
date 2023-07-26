terraform {
  required_version = ">=1.3.7"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.43.0"
    }
  }
  cloud {
    organization = "ACG-Azure_Lab"

    workspaces {
      name = "azure"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}
