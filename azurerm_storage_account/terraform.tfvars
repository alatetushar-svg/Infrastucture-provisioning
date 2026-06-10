storageaccount = {
  storageaccount1 = {
    name                     = "prodstorageaccount"
    resource_group_name      = "rg-prod"
    location                 = "west europe"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
  storageaccount2 = {
    name                     = "devstorageaccount"
    resource_group_name      = "rg-dev"
    location                 = "west europe"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}