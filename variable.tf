variable "loadbalancer_list" {
    type = list(any)
    default = []
    description = "list of loadbalncers"
  
}

variable "resource_group_output" {
    type = map(any)
    default = {}
    description = "resource group objects"
}

variable "public_ip_output" {
    type = map(any)
    default = {}
    description = "public ip objects"
  
}

variable "vnet_subnet_output" {
  type = map(any)
  default = {}
  description = "subnet objects"
}