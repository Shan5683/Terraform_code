resource "azurerm_resource_group" "RG" {  # Azure Resource Group create kar rahe hain
  name     = "shantanu-rg"                        # Azure mein Resource Group ka actual naam
  location = "West Europe"                    # Resource Group ki Azure region/location
}                                              # Resource block yahan end