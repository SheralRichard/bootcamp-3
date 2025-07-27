terraform {
  backend "azurerm" {
    resource_group_name  = "jenkins-demo-rg"
    storage_account_name = "jenkinsstoragedemo1234"   
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}



