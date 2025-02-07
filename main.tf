
module "rg-module" {
  source = "../../Modules/rg"
  Rgs = var.rg-details
}
# module "stg-module" {
#   depends_on = [ module.rg-module ]
#   source = "../../Modules/storage"
#   Storages = var.stg-details
#   }

  module "vnet-module" {
    depends_on = [  module.rg-module]
    source = "../../Modules/vnet"
    vnet= var.vnet-details
  }

  module "subnet-module" {
    depends_on = [module.vnet-module  ]
    source = "../../Modules/subnet"
    subnet = var.subnet-details
  }
  
  module "vm-module" {
    depends_on = [ module.subnet-module ]
    source = "../../Modules/vm"
    rg-name = "mgeletric"
    rg-location = "westeurope"
  
  }
