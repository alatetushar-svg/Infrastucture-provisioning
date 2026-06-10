subnet = {
  subnet1 = {

    name                 = "sub-frontend"
    resource_group_name  = "rg-prod"
    virtual_network_name = "vnet-prod"
    address_prefixes     = ["192.168.0.0/29"]

  }
  subnet2 = {

    name                 = "sub-backend"
    resource_group_name  = "rg-prod"
    virtual_network_name = "vnet-prod"
    address_prefixes     = ["192.168.0.128/25"]

  }
}