provider "aws" {
    #   Hier kommen interessante Werte
    region = "eu-central-1"
}

resource "aws_instance" "tolle-ec2" {
    instance_type = "t3.nano"
    ami = "ami-071878317c449ae48"
}