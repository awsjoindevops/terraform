# resource "aws_instance" "web" {
#     #count = 11
#     count = length(var.instance_names)
#   ami           = var.ami_id            #"ami-03265a0778a880afb"  Devops practice 
#   instance_type = local.instance_type_1
#   #vpc_security_group_ids= [aws_security_group.roboshop-all_1terrorm.id]
 
#   tags={
#     Name = var.instance_names[count.index]
#   }
# }


# resource "aws_route53_record" "www" {
#  # count = 11
#  count = length(var.instance_names)
#   zone_id = var.zone_id
#   name    = "${var.instance_names[count.index]}.${var.cdn}"
#   type    = "A"
#   ttl     = 1
#   records = [local.ip]
# }


resource "aws_instance" "web" {      
  ami  = var.ami_id      #"ami-03265a0778a880afb"  Devops practice 
  instance_type = local.instance_type_1
  
  tags={
    Name = "locals_1"
  }
}
