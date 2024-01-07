variable "instance_names" {
    type = list
  default = ["mongodb","redis","mysql","rabbitmq","catalogue","user","cart","shipping","payment","dispatch","web"]
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

