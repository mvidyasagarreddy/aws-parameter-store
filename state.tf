terraform {
  backend "s3" {
    bucket = "demo-devopsb73"
    key    = "params/terraform.tfstate"
    region = "us-east-1"
  }
}