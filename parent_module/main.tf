
module "resource_group"{
    source = "../child_module/azurerm_resource_group"
    rgs = var.module_rgs
}

module "virtual_network"{
    depends_on = [module.resource_group]
    source = "../child_module/azurerm_virtual_netwrok"
    vnets = var.module_vnets
}

module "subnet"{
    depends_on = [module.resource_group,module.virtual_network]
    source = "../child_module/azurerm_Virtual_subnet"
    subnets = var.module_subnets
}