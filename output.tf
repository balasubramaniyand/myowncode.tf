output "ec2_instanc_publicip" {
    description = "geting the instances public ip"
    value = aws_instance.bala.public_ip
  
}

# this chat gpt
output "ec2_instance_public_ips" {
  value = [for instance in aws_instance.bala : instance.public_ip]
}
