terraform {
  backend "s3" {
    bucket = "devsig-90"
    key    = "s3-state-file/terraform.tfstate"
    region = "us-east-1"
  }
}

bresource "aws_instance" "ec2" {
   ami = "ami-03265a0778a880afb"
   instance_type = "t3.micro"
   vpc_security_group_ids = ["sg-0827c01ee4ba4d8aa"]
   tags = {
    Name = "test"
   }
}
