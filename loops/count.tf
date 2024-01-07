resource "aws_instance" "web" {
    #count = 11
    count = length(var.instance_names)
  ami           = var.ami_id            #"ami-03265a0778a880afb"  Devops practice 
  instance_type = var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] == "mysql" || var.instance_names[count.index] == "shipping" ? "t3.small" : "t2.micro"
  #vpc_security_group_ids= [aws_security_group.roboshop-all_1terrorm.id]
 
  tags={
    Name = var.instance_names[count.index]
  }
}


resource "aws_route53_record" "www" {
 # count = 11
 count = length(var.instance_names)
  zone_id = var.zone_id
  name    = "${var.instance_names[count.index]}.${var.cdn}"
  type    = "A"
  ttl     = 1
  records = [var.instance_names[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip]
}


