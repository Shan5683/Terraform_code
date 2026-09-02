resource "azurerm_resource_group" "RG" {  # Azure Resource Group create kar rahe hain
  name     = "shantanu-rg"                        # Azure mein Resource Group ka actual naam
  location = "Central India"                    # Resource Group ki Azure region/location
}                                              # Resource block yahan end

resource "azurerm_storage_account" "stg" {         # Storage Account create
  name                     = "shantanustg91"      # Storage Account name (globally unique)
  resource_group_name      = azurerm_resource_group.RG.name # RG ka naam
  location                 = azurerm_resource_group.RG.location # RG ki location
  account_tier             = "Standard"       # Storage performance tier
  account_replication_type = "LRS"             # Locally Redundant Storage
}