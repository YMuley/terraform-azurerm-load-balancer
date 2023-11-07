locals {
   lb_list = {for lb in var.loadbalancer_list : lb.name => lb}
}