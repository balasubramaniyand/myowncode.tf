# terraform block
terraform {
  required_providers {
    aws ={
      source = "hashicorp/aws"
      version = "~>3.0"
    }
  }
}
#provider block
provider "aws" {
  region =var.aws_regions_mumbai
  profile = "default"
}
