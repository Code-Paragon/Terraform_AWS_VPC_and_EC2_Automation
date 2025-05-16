variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type = string
}

variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
  type = string
}

variable "avail_zone" {
  description = "Availability zone to deploy resources"
  type = string
}

variable "env_prefix" {
  description = "Prefix for tagging resources"
  type = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type = string
}

variable "my_ip" {
  description = "Your IP address for SSH access (CIDR notation)"
  type  = string
}

variable "public_key_location" {
  description = "Path to your public SSH key file"
  type = string
}
