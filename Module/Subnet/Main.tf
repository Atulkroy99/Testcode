variable "sn_map" {
    type = map(any)
}

resource "azurerm_subnet" "sn" {
    for_each = var.sn_map
    name =  each.value.name
    virtual_network_name = each.value.virtual_network_name
    resource_group_name = each.value.resource_group_name
    address_prefixes = each.value.address_prefixes
}