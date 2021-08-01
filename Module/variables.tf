variable "resource_group" {
    default = "venutryrg"  
}

variable "location"{
    default = "uksouth"
}

variable "vnet" {
    default = "vnettest"
}

variable "address_space" {
    default = "10.0.0.0/16"
}

variable "subnet_nametest" {
    default = ["subnet_1", "subnet_2", "subnet_3"]
}

variable "sub_prefix" {
    default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}


