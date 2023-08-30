terraform{
    required_providers {
      aws ={
        source = "hashicorp/aws"
        version = "~> 2.0"
      }
    }
}

provider "aws" {
    region = "us-east-1
  
}


resource "ec2_instance" "bala" {
    ami=data.aws_ami.web_ami.id     #this calling datasources for ami
  instance_type="t2.micro"
  tags={
    Name="bala"
  }
}
# data block
data "aws_ami" "web_ami" {
 most_recent      = true
  owners           = ["amazon"]
filter {
    name   = ""
    values = ["amzn2-ami-hvm*"]
  }
}


