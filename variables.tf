## General

variable "tags" {
  type        = map(string)
  description = "Mapping of tags to apply to all resources in this module"
  default     = {}
}

## Security group

variable "vpc_id" {
  type        = string
  description = "The VPC ID where the instance/s will be deployed in"
}


## Instance

variable "ami" {
  type        = string
  description = "AMI ID to be used by the instance"
}

variable "instance_type" {
  type        = string
  description = "Instance type to be used"
}

variable "key_name" {
  type        = string
  description = "SSH key to be used as main access"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID where the instance will be deployed in"
}
