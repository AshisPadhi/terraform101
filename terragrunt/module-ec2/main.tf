# Create ec2 instance
resource "aws_instance" "first" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name = "akp-personal"
  tags = {
    Name        = "TerraformInstance"
  }
}

variable "ami_id" {
  default="ami-0287a05f0ef0e9d9a"
  description = "amazon_machine_image_id" 
}

variable "instance_type" {
    description="EC2 instance type"
    default = "t3a.mirco"
}