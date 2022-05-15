# AWS EC2

Create a EC2 instance on AWS with S3 bucket access and with allowed SSH remote access.
Configure a public SSH key on AWS with same value of the variable "ssh_key_name" in "vars.tf" file.

## Some helpful commands

### Describe security groups

`aws ec2 describe-security-groups`

### Connect on EC2 instance via SSH

`ssh -i terraform-aws ubuntu@54.237.187.83`

### Destroy resource using CLI command

`terraform destroy --target <<resource_name>>`

Also is possible (and is the suggestion) remove the resource from file and use `terraform apply`

### Destroy all resources

`terraform destroy`
