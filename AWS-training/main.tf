provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "akp-ec2-instance" {
    ami = var.ami_id
    instance_type = var.instance_type
    #key_name = var.key_name
    vpc_security_group_ids = ["${aws_security_group.akp-sg.id}"]
    tags = {
      Name = "Akp-instance"
    }
}