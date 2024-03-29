terraform {
  required_providers {
 aws={
    source = "hashicorp/aws"
version = "~>3.0"
 }   

  }
}
provider "aws" {
    region = "ap-south-1"
    profile = "default"
  
}

resource "aws_instance" "bala" {
    ami = "ami-0da59f1af71ea4ad2"
    instance_type ="t2.micro"
    count = 6
    tags = {
        "Name" = "bala"
        "Name" = "bala-${count.index}"        
    }
  
}


# Terraform Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Provider Block
provider "aws" {
  region  = "ap-south-1"
  profile = "default"
}

# Create 5 EC2 Instance
resource "aws_instance" "web" {
  ami           = "ami-079b5e5b3971bd10d" # Amazon Linux
  instance_type = "t2.micro"
  count         = 5
  tags = {
    "Name" = "web"
    #"Name" = "web-${count.index}"
  }
}
