resource "aws_security_group" "akp-sg" {
    name = "akp-sg"
    tags = {
      Name = "akp-sg"
    }
    description = "allow ssh(22) and http(80)"
    vpc_id = var.vpc_id
    ingress {
        from_port = 80
        to_port = 80
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}