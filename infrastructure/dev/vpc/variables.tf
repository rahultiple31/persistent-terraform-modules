variable "environment" {
  type        = string
  description = "Deployment environment name (e.g., dev, stage, prod)."
}

variable "aws_region" {
  type        = string
  description = "AWS region for resource deployment."
}

variable "vpc_name" {
  type        = string
  description = "Name of the VPC."
}

variable "vpc_network_cidr" {
  type        = string
  description = "CIDR block for the VPC."
}

variable "resource_availability_zones" {
  type        = list(string)
  description = "List of availability zones for subnets."
}

variable "transit_gateway_id" {
  type        = string
  default     = ""
}

variable "second_transit_gateway_id" {
  type        = string
  default     = ""
}

variable "enable_nat_gateway" {
  type        = bool
  default     = true
}

variable "create_internet_gateway" {
  type        = bool
  default     = true
}

variable "tags" {
  type = map(string)
  default = {
    Environment = ""
  }
}
