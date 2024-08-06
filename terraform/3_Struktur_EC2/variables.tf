variable "aws_region" {
  description = "The AWS region to deploy resources"
  default     = "eu-central-1"
}

variable "vpc_id" {
  description = "The VPC ID where the instance will be deployed"
}

variable "subnet_id" {
  description = "The Subnet ID where the instance will be deployed"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.nano"
}

variable "key_name" {
  description = "SSH key name"
}
