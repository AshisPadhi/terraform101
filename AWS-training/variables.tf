variable "ami_id" {
    description = "amazon machine image"
    default = "ami-0287a05f0ef0e9d9a"
}

variable "instance_type" {
    description = "instance type"
    default = "t2.micro"
}

variable "vpc_id" {
    description = "default vpc id"
    default = "vpc-098abc55d8c632804"
}