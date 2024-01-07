output "ami_id_1" {
    value = data.aws_ami.centos08.id
  
}

output "ami_id_2" {
    value = data.aws_ami.aws-linux-2.id
  
}

output "vpc_id" {
    value = data.aws_vpc.default
  
}