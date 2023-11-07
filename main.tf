resource "azurerm_lb" "load_balancer" {
  for_each = local.lb_list
  name = each.value.name
  resource_group_name = var.resource_group_output[each.value.name].name
  location = each.value.location
  sku = each.value.sku
  sku_tier = each.value.sku_tier
  tags = each.value.tags
  
    dynamic "frontend_ip_configuration" {
        for_each = each.value.frontend_ip_configuration
        content {
        name = frontend_ip_configuration.value.name
        zones = each.value.zones
        public_ip_address_id = var.public_ip_output[frontend_ip_configuration.value.public_ip_name].id
        subnet_id = var.vnet_subnet_output[frontend_ip_configuration.value.subnet_name].id
        private_ip_address_allocation = frontend_ip_configuration.value.private_ip_address_allocation
    }
    }
}