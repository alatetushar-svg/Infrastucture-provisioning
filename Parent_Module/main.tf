module "rg" {
   source = "../Child_Module/azurerm_resource_group"
  rg     = var.rg
}
module "pips" {
    depends_on = [module.rg, module.vnet, module.subnet]
  source = "../Child_Module/azurerm_public_ip"
  pips   = var.pips
}
module "subnet" {
    depends_on = [module.vnet]
  source = "../Child_Module/azurerm_subnet"
  subnet = var.subnet
}
module "vnet" {
    depends_on = [module.rg]
  source = "../Child_Module/azurerm_virtual_network"
  vnet   = var.vnet
}
module "nics" {
    depends_on = [module.subnet, module.pips]
  source = "../Child_Module/azurerm_network_interface"
  nics   = var.nics
}
