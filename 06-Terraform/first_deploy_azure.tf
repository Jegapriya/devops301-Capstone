# Configure the Azure Provider
provider "azurerm" {
  region = "us-east-2"
  access_key = "AKIATWAGUUVV3F7K7YBY"
  secret_key = "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"
}

resource "azurerm_resource_group" "web" {
   name     = "myResourceGroup"
    location = "eastus"

    tags = {
        environment = "Terraform Demo"
    }
}
