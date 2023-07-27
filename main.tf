resource "azurerm_resource_group" "rg" {
  name     = "1-0d931743-playground-sandbox"
  location = "East US"
}

resource "azurerm_storage_account" "storage" {
  name                     = "stgrcaim3112"
  location                 = azurerm_resource_group.rg.location
  resource_group_name      = azurerm_resource_group.rg.name
  account_tier             = "Standard"
  account_replication_type = "RAGRS"
}


locals {
  tags = {
    "Environment" = var.environment
    "Type" = var.type
  }
}

resource "azurerm_storage_account" "securestorage" {
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  name                = var.storage_account_name
  account_tier        = "Standard"
  # If var.environment is equal Production do GRS, otherwise LBS
  account_replication_type      = var.environment == "Production" ? "GRS" : "LBS"
  public_network_access_enabled = false
  tags                          = local.tags
}
