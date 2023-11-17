variable "ami_id" {
  default="ami-0287a05f0ef0e9d9a"
  description = "amazon_machine_image_id" 
}

variable "instance_type" {
    description="EC2 instance type"
    default = "t3a.mirco"
}