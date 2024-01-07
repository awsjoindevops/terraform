variable "instance_names" {
    type = map
  default = {
  mongodb="t3.small"
  redis="t2.micro"
  mysql="t3.small"
  catalogue="t2.micro"
  shipping="t2.micro"

  }
}


variable "ami_id" {
    type = string
  default = "ami-03265a0778a880afb"
  }

  
variable "zone_id" {
  type = string
  default = "Z0052568278EYAYP4D07R"
  }

variable "cdn"{
  type=string
  default = "awsjoindevops.online"
}




