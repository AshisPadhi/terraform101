output "instance_public_ip"{
    value = ["${aws_instance.first.*.public_ip}"]
}