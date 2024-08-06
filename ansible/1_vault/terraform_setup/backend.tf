terraform {
  backend "s3" {
    bucket = "23-10-bucket-beispiel" # "<bucket-name>" # Hier eigenen Bucket eintragen
    key    = "ansible-06-08/ec2.tfstate"
    region = "eu-central-1"
  }
}
