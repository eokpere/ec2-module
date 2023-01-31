provider "aws" {
   region   = var.region
   profile = "terraform-user-new-acct"
 }

# Data sources to get VPC 
#data "aws_vpc" "default" {
 # default = true
#}

#create sg
module "security_group" {
  source = "../modules-sg-ec2/security-group-ssh"
}

#create ec2 instance
module "ec2_instance" {
  source                        = "../modules-sg-ec2/Ec2"
  instance_type                 = var.instance_type
  #key_name                      = var.key_name
}