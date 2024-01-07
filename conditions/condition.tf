resource "aws_instance" "web" {
  ami           = var.ami_id            #"ami-03265a0778a880afb"  Devops practice 
  instance_type = var.instance_name == "MongoDB" ? "t2.small" : "t2.micro"
  #vpc_security_group_ids= [aws_security_group.roboshop-all_1terrorm.id]

  #tags=var.tags
}
