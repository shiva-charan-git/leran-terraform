data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}


resource "aws_instance" "frontend" {
   count = length(var.instance)
   ami = "ami-03265a0778a880afb"
   instance_type = "t3.micro"
   vpc_security_group_ids = ["sg-0827c01ee4ba4d8aa"]
   tags = {
     Name = var.instance[count.index]
   }
}

variable "instance" {
    default = [ "cart","catalogue","user","payment","shipping"]
}
  
