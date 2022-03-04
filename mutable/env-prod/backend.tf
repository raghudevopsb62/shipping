terraform {
  backend "s3" {
    bucket = "terraform-b62"
    key    = "mutable/shipping/prod/terraform.tfstate"
    region = "us-east-1"
  }
}
