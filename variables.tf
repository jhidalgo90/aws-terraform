### INSTANCES VARIABLES ###

variable "ami_id" {
  description = "Ami ID for AWS Linux Machine"
  type        = string
}

variable "test_instance_type" {
  description = "Instace for testing purposes"
  type        = string
}


### NETWORK VARIABLES ###

variable "vcp_name" {
  description = "VPC name for AWS"
  type        = string
}

variable "subnet_name" {
  description = "Subnet name for AWS"
  type        = string
}

variable "cidr_block" {
  description = "CIDR for the VPC"
  type        = string
}

### SECURITY GROUPS VARIABLES ####

variable "sg_1" {
  description = "SG for instances"
  type        = string
}