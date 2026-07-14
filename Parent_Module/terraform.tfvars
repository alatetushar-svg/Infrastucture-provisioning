rg = {
    rg1 = { 
        Name = "rg-prod"
        location = "central india"
    }
      rg2= { 
        Name = "rg-dev"
        location = "central india"
    }
}
subnet = {
  subnet1 = {

    name                 = "sub-frontend"
    resource_group_name  = "rg-prod"
    virtual_network_name = "vnet-prod"
    address_prefixes     = ["192.168.0.0/29"]

  }
  subnet2 = {

    name                 = "sub-backend"
    resource_group_name  = "rg-dev"
    virtual_network_name = "vnet-dev"
    address_prefixes     = ["192.168.0.128/25"]

  }
}
vnet = {
  vnet1 = {

    name                = "vnet-prod"
    location            = "central india"
    resource_group_name = "rg-prod" 
    address_space       = ["192.168.0.0/24"]
  }
  vnet2 = {

    name                = "vnet-dev"
    location            = "central india"
    resource_group_name = "rg-dev"
    address_space       = ["10.120.0.0/24"]
  }
}
pips = {
  pip1 = {
    name                = "pip-prod"
    resource_group_name = "rg-prod"
    location            = "central india"
    allocation_method   =  "Static"
  }
  pip2 = {
    name                = "pip-dev"
    resource_group_name = "rg-dev"
    location            = "central india"
    allocation_method   =  "Static"
  }
}
nics = {
  nic1 = {
    nic_name            = "nic-prod"
    location            = "central india"
    resource_group_name = "rg-prod"
    subnet_name         = "sub-frontend"
    vnet_name           = "vnet-prod"
    pip_name            = "pip-prod"
  }
  nic2 = {
    nic_name            = "nic-dev"
    location            = "central india"
    resource_group_name = "rg-dev"
    subnet_name         = "sub-backend"
    vnet_name           = "vnet-dev"
    pip_name            = "pip-dev"
  }
}