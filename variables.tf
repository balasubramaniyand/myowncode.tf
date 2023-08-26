#input variables
variable "aws_regions_mumbai" {
    description = "Region in which aws resources to be create"
    type = string
    default = "ap-south-1"
}

variable "ec2_ami_id" {
    type = string
    default ="ami-06f621d90fa29f6d0"
}

variable "ec2_instance_count" {
    type = number
    default = 5
  
}
