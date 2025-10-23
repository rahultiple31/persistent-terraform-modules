module "vpc" {
  source = "git::https://github.com/rahultiple31/persistent-terraform-base.git//aws/vpc?ref=main"

  # Basic info
  name        = var.vpc_name
  environment = var.environment
  network_cidr = var.vpc_network_cidr
  zones       = var.resource_availability_zones

  # Subnets
  private_subnets_cidr = [
    cidrsubnet(var.vpc_network_cidr, 4, 5),
    cidrsubnet(var.vpc_network_cidr, 4, 13)
  ]

  public_subnets_cidr = [
    cidrsubnet(var.vpc_network_cidr, 4, 7),
    cidrsubnet(var.vpc_network_cidr, 4, 15)
  ]

  # Gateways
  enable_nat_gateway      = var.enable_nat_gateway
  create_internet_gateway = var.create_internet_gateway

  # Tags
  tags = var.tags
}
