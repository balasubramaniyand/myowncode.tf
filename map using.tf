    # main.tf
resource "aws_instance" "bala" {
    ami =var.ec2_ami_id
    instance_type= var.ec2_instance_type_map["small-app"] # calling this value variables
    count = var.ec2_instance_count
    tags ={
        Name = "bala"
    } 
}
#provider
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
  region =var.aws_regions_mumbai[5]
  profile = "default"
}

# variables.tf
variable "ec2_instance_type_map"{
    type =map (string)
    default = {
      "small-app" = "t3.small"
      "medium-app"= "t3.medium"
      "big-app" = "t3.large"
    }
}
