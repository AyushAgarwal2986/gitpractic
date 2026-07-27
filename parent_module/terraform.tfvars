module_rgs ={
    rg1 = {
        name     = "rg_parent_child"
        location = "East US"
    }
}

module_vnets = {
    vnet1 = {
        name                = "ayush_vnet1"
        location            = "eastus"
        resource_group_name = "rg_parent_child"
        address_space       = ["10.0.0.0/16"]
}
}


module_subnets ={
    subnet1 = {
        name                = "Frontend_subnet"
        resource_group_name = "rg_parent_child"
        virtual_network_name = "ayush_vnet1"
        address_prefixes    = ["10.0.1.0/24"]
}
    subnet2 = {
            name                = "Backend_subnet"
            resource_group_name = "rg_parent_child"
            virtual_network_name = "ayush_vnet1"
            address_prefixes    = ["10.0.2.0/24"]
}
}