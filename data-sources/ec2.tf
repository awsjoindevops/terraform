resource "aws_instance" "centos08-1" {
  ami           = data.aws_ami.centos08.id # Devops practice 
  instance_type = "t2.micro"
 
  tags = {
    Name = "data-source"
  }
}