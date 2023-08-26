resource "aws_instance" "bala" {
    ami =var.ec2_ami_id
    instance_type= "t2.micro"
    count = var.ec2_instance_count
    user_data =<<-EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install httpd -y
    sudo systemctl enable httpd
    sudo systemctcl start httpd
    echo <h1> bala hello </h1>">/var/www/index.html
    EOF
    
    tags ={
        Name = "bala"
    }
  
}
