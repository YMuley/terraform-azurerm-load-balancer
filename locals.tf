locals {
   lb_list = {for lb in var.var.loadbalancer_list : lb.name => lb}
}