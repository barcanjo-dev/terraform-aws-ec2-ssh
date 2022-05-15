output "ec2-dev-ip" {
  value = "${aws_instance.dev[0].public_ip}"
}