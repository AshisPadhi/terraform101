terraform {
  #using local source as module
  source = "../module-ec2/main.tf"
}

inputs = {
  instance_type  = "t2.micro"
  ami_id = "ami-0287a05f0ef0e9d9a"
}