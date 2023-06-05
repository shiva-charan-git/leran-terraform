resource "aws_instance" "frontend" {
   ami = "ami-0b5a2b5b8f2be4ec2"
   instance_type = "t3.micro"
   vpc_security_group_ids = ["sg-0827c01ee4ba4d8aa"]
   tags = {
     Name = "frontend"
   }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z01050902R4BE1CZTBGLG"
  name    = "frontend-dev.devsig90.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongodb" {
   ami = "ami-0b5a2b5b8f2be4ec2"
   instance_type = "t3.micro"
   vpc_security_group_ids = ["sg-0827c01ee4ba4d8aa"]
   tags = {
     Name = "mongodb"
   }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z01050902R4BE1CZTBGLG"
  name    = "mongodb-dev.devsig90.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "catalogue" {
   ami = "ami-0b5a2b5b8f2be4ec2"
   instance_type = "t3.micro"
   vpc_security_group_ids = ["sg-0827c01ee4ba4d8aa"]
   tags = {
     Name = "catalogue"
   }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z01050902R4BE1CZTBGLG"
  name    = "catalogue-dev.devsig90.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "cart" {
   ami = "ami-0b5a2b5b8f2be4ec2"
   instance_type = "t3.micro"
   vpc_security_group_ids = ["sg-0827c01ee4ba4d8aa"]
   tags = {
     Name = "cart"
   }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z01050902R4BE1CZTBGLG"
  name    = "cart-dev.devsig90.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mysql" {
   ami = "ami-0b5a2b5b8f2be4ec2"
   instance_type = "t3.micro"
   vpc_security_group_ids = ["sg-0827c01ee4ba4d8aa"]
   tags = {
     Name = "mysql"
   }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z01050902R4BE1CZTBGLG"
  name    = "mysql-dev.devsig90.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "payment" {
   ami = "ami-0b5a2b5b8f2be4ec2"
   instance_type = "t3.micro"
   vpc_security_group_ids = ["sg-0827c01ee4ba4d8aa"]
   tags = {
     Name = "payment"
   }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z01050902R4BE1CZTBGLG"
  name    = "payment-dev.devsig90.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "rabbitmq" {
   ami = "ami-0b5a2b5b8f2be4ec2"
   instance_type = "t3.micro"
   vpc_security_group_ids = ["sg-0827c01ee4ba4d8aa"]
   tags = {
     Name = "rabbitmq"
   }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z01050902R4BE1CZTBGLG"
  name    = "rabbitmq-dev.devsig90.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "radis" {
   ami = "ami-0b5a2b5b8f2be4ec2"
   instance_type = "t3.micro"
   vpc_security_group_ids = ["sg-0827c01ee4ba4d8aa"]
   tags = {
     Name = "radis"
   }
}

resource "aws_route53_record" "radis" {
  zone_id = "Z01050902R4BE1CZTBGLG"
  name    = "redis-dev.devsig90.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "shipping" {
   ami = "ami-0b5a2b5b8f2be4ec2"
   instance_type = "t3.micro"
   vpc_security_group_ids = ["sg-0827c01ee4ba4d8aa"]
   tags = {
     Name = "shipping"
   }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z01050902R4BE1CZTBGLG"
  name    = "shipping-dev.devsig90.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "user" {
   ami = "ami-0b5a2b5b8f2be4ec2"
   instance_type = "t3.micro"
   vpc_security_group_ids = ["sg-0827c01ee4ba4d8aa"]
   tags = {
     Name = "user"
   }
}

resource "aws_route53_record" "user" {
  zone_id = "Z01050902R4BE1CZTBGLG"
  name    = "user-dev.devsig90.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}