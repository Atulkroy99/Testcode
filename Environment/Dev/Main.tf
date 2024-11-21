module "rg_block" {
  source = "../../Module/Resourcegroup"
  rg_map = var.rg_map
}

module "stg_block" {
  depends_on = [module.rg_block]
  source     = "../../Module/StorageAccount"
  stg_map    = var.stg_map

}

module "vnet_block" {
  depends_on = [module.rg_block]
  source     = "../../Module/Vnet"
  vnet_map   = var.vnet_map

}

module "sn_block" {
  depends_on = [module.vnet_block]
  source     = "../../Module/Subnet"
  sn_map     = var.sn_map
}