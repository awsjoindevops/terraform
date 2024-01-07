resource "aws_instance" "web" {
  ami           = var.ami_id            #"ami-03265a0778a880afb"  Devops practice 
  instance_type = var.instance_type_1
  vpc_security_group_ids= [aws_security_group.roboshop-all_1terrorm.id]

  tags=var.tags
}


resource "aws_security_group" "roboshop-all_1terrorm" { # terraform name, for terraform reference
  name        = var.sg-name # this is aws name
  description = var.sg-desc
  
  ingress {
    description      = "Allow all ports"
    from_port        = var.inbound-from-port
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.cidr_blocks
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "roboshop-all3"
  }
}

