provider "aws" {
  region = var.region
}

resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = var.vpc_name
  }
}

module "aws_subnets" {
  source = "../aws-subnets"

  vpc_id                 = aws_vpc.main.id
  subnet_name_prefix     = var.subnet_name_prefix
  subnet_public1_a_cidr  = var.subnet_public1_a_cidr
  subnet_public2_b_cidr  = var.subnet_public2_b_cidr
  subnet_private1_a_cidr = var.subnet_private1_a_cidr
  subnet_private2_b_cidr = var.subnet_private2_b_cidr
}

module "aws_network" {
  source = "../aws-network"

  region               = var.region
  vpc_id               = aws_vpc.main.id
  subnet_public1_a_id  = module.aws_subnets.subnet_public1_a_id
  subnet_public2_b_id  = module.aws_subnets.subnet_public2_b_id
  subnet_private1_a_id = module.aws_subnets.subnet_private1_a_id
  subnet_private2_b_id = module.aws_subnets.subnet_private2_b_id
  ssh_ingress_cidr     = var.ssh_ingress_cidr
  enable_nat_gateway   = var.enable_nat_gateway
}
