terraform{
    required_providers {
      aws{
        source="hashicrop/aws"
        version="~>5.0"
      }
    }
}
provider "aws" {
    region ="ap-south-1"
  
}
resource "aws_instance" "bala" {
    ami = "ami1234566"
    instances_type ="t2.micro"
    key_name="777"  
tag={
    name="bala"
}
}
