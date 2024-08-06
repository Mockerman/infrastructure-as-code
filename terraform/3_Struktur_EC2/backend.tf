terraform {
  backend "s3" {
    bucket = "techstarter-tom-iac"
    key    = "ec2-example/terraform.tfstate"
    region = "eu-central-1"
  }
}
