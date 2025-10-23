variable "environment" {
  description = "Deployment environment name (e.g., dev, stage, prod)."
  type        = string
}

variable "aws_region" {
  description = "AWS region where VPC and related resources will be created."
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC to be created."
  type        = string
}

variable "vpc_network_cidr" {
  description = "CIDR block for the VPC."
  type        = string
}

variable "resource_availability_zones" {
  description = "List of availability zones to be used for subnet creation."
  type        = list(string)
}

variable "enable_nat_gateway" {
  description = "Enable NAT Gateway creation in VPC."
  type        = bool
  default     = true
}

variable "create_internet_gateway" {
  description = "Enable Internet Gateway creation in VPC."
  type        = bool
  default     = true
}

variable "tags" {
  description = "A map of tags to assign to all resources."
  type        = map(string)
  default = {
    Environment = ""
  }
}
