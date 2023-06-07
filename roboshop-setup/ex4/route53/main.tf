resource "aws_route53_record" "record" {
  zone_id = "Z01050902R4BE1CZTBGLG"
  name    = "${var.component}-dev.devsig90.online"
  type    = "A"
  ttl     = 30
  records = [var.private_ip]
}


variable "private_ip" {}

variable "component" {}