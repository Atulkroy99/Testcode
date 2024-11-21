variable "rg_map" {
    type = map(any)
  
}

resource "azurerm_resource_group" "TestRg" {
    for_each = var.rg_map
    name = each.value.name
    location = each.value.location 
}