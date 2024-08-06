module "vpc" {
  source = "./aws_vpc"
}

module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.6.1"

  subnet_id = module.vpc.public_subnet_id_1a
}