terraform {
  backend "s3" {
    bucket = "<bucket-name>" # Hier eigenen Bucket eintragen
    key    = "ansible-nginx/ec2.tfstate"
    region = "eu-central-1"
  }
}
