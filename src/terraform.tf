terraform {
  required_version = "~> 1.1, <= 1.9.5"

  required_providers {
    azurerm = {
      configuration_aliases = [
        azurerm,
        azurerm.eventhub
      ]
      source  = "hashicorp/azurerm"
      version = "3.116.0"
    }
  }
}
