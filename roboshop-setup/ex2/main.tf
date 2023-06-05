data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}


/*resource "aws_instance" "frontend" {
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
  

*/


resource "aws_instance" "instances" {
   for_each = var.instances
   ami = "ami-03265a0778a880afb"
   instance_type = each.value["type"]
   vpc_security_group_ids = ["sg-0827c01ee4ba4d8aa"]
   tags = {
     Name = each.value["name"]
   }
}

variable "instances" {
  default = {
    catalogue ={
      name = "catalogue"
      type = "t3.micro"
    }
     user ={
      name = "user"
      type = "t3.micro"
    }
  }
}


output "ec2" {
  value = aws_instance.instances["catalogue"].public_ip
  
}

output "ec3" {
  value = [for k, v in aws_instance.aws_instance.instances : v.public_ip]
  
}

