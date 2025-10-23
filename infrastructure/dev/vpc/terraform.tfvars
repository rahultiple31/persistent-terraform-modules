environment                 = "dev"
aws_region                  = "eu-west-1"
vpc_name                    = "dev-vpc"
vpc_network_cidr            = "10.81.16.0/20"
resource_availability_zones = ["eu-west-1a", "eu-west-1b"]

transit_gateway_id          = "tgw-044bb2f83f47dc8ae"
second_transit_gateway_id   = ""

enable_nat_gateway          = true
create_internet_gateway     = true

tags = {
  Environment = "dev"
}
