variable "amis" {
  type = map(string) // map

  default = {
    "us-east-1" = "ami-005de95e8ff495156"
  }
}

variable "ec2_instance_type" {
  type = string

  default = "t2.micro"
}

variable "cidr_blocks" {
  type = list(string)

  default = ["186.220.198.16/32"]
}

variable "ssh_key_name" {
  type = string

  default = "terraform-aws"
}