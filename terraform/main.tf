terraform {
  backend "azurerm" {
    resource_group_name  = "SGDemoRG"
    storage_account_name = "sgdemostg"
    container_name       = "sgdemostate"
    key                  = "dev.terraform.tfstate"
  }
}
module "RG" {
  source   = "./modules/RG" #A
  rgname   = var.rgname     #B
  location = var.location
}
module "SA" {
  source   = "./modules/StorageAccount"
  sname    = var.sname
  rgname   = var.rgname
  location = var.location
}