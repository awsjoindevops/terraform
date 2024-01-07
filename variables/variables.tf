variable "ami_id" {
    type = string
    default = "ami-03265a0778a880afb"
  
}

variable "instance_type_1" {
    type = string
    #default = "t2.micro"
  
}

variable "tags" {
    type = map
    default = {
        Name= "TERAFORM TAG"
        Project= "ROBOSHOP"
        environment="PROD"
        Component= "WEB"
        Terraform=true

    }
}


variable "sg-name" {
    type = string
    default = "roboshop-all-aws-SG_NAME"
  
}

variable "sg-desc" {
    type = string
    default = "Allow TLS inbound traffic -TERRA"
  
}


variable "inbound-from-port" {
    type = number
    default = 0 
  
}

variable "cidr_blocks" { 
    type = list
    default = ["0.0.0.0/0"]  
}



