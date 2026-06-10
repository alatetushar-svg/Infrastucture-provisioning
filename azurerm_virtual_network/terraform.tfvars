vnet = {
  vnet1 = {

    name                = "vnet-prod"
    location            = "west europe"
    resource_group_name = "rg-prod" 
    address_space       = ["192.168.0.0/24"]
  }
  vnet2 = {

    name                = "vnet-dev"
    location            = "west europe"
    resource_group_name = "rg-dev"
    address_space       = ["10.120.0.0/24"]
  }
}