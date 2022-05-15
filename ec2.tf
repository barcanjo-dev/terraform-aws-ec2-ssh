resource "aws_instance" "dev" {
  count = 1
  ami           = var.amis["us-east-1"]
  instance_type = var.ec2_instance_type
  key_name = var.ssh_key_name

  vpc_security_group_ids = [ "${aws_security_group.allow_ssh.id}" ]
  depends_on = [
    aws_s3_bucket.bucket
  ]

  tags = {
    Name = "dev-instance-${count.index}"
  }
}