resource "aws_subnet" "private1_a" {
  vpc_id            = var.vpc_id
  cidr_block        = var.subnet_private1_a_cidr
  availability_zone = "eu-central-1a"

  tags = {
    Name = "${var.subnet_name_prefix}-subnet-private1-eu-central-1a"
  }
}

resource "aws_subnet" "public1_a" {
  vpc_id            = var.vpc_id
  cidr_block        = var.subnet_public1_a_cidr
  availability_zone = "eu-central-1a"

  tags = {
    Name = "${var.subnet_name_prefix}-subnet-public1-eu-central-1a"
  }
}

resource "aws_subnet" "public2_b" {
  vpc_id            = var.vpc_id
  cidr_block        = var.subnet_public2_b_cidr
  availability_zone = "eu-central-1b"

  tags = {
    Name = "${var.subnet_name_prefix}-subnet-public2-eu-central-1b"
  }
}

resource "aws_subnet" "private2_b" {
  vpc_id            = var.vpc_id
  cidr_block        = var.subnet_private2_b_cidr
  availability_zone = "eu-central-1b"

  tags = {
    Name = "${var.subnet_name_prefix}-subnet-private2-eu-central-1b"
  }
}
