resource "aws_instance" "ec2" {
   ami = "ami-08ee87f57b38db5af"
   instance_type = "t3.micro"
   vpc_security_group_ids = ["sg-0827c01ee4ba4d8aa"]
}