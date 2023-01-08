# This Code is Used in Subnet.tf

variable "cidr" {           # CIDR = Classless Inter-Domain Routing.
  type = list               # Type of Variable is List.
  default = ["10.0.2.0/24","10.0.3.0/24"]
}

variable "az" {              # az = Availability Zone.
  type = list
  default = ["ap-south-1","ap-south-1"]
}
