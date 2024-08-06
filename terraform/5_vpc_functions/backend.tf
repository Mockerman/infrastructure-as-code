terraform {
  backend "s3" {
    bucket = "23-10-bucket-beispiel" # Hier eigenen Bucket eintragen
    key    = "vpc/vpc.tfstate"
    region = "eu-central-1"
  }
}
