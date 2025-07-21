terraform {
  backend "s3" {
    bucket  = "test-ci-cd-sit-bucket"
    key     = "state/terraform.tfstate"
    region  = "ap-south-1"
    encrypt = true
  }
}