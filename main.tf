# Data sources to get VPC 
#data "aws_vpc" "default" {
 # default = true
#}

#create sg
module "security_group" {
  source = "./modules-sg-ec2/security-group-ssh"
}

#create ec2 instance
module "ec2_instance" {
  source                        = "./modules-sg-ec2/Ec2"
  instance_type                 = var.instance_type
  key_name                      = var.key_name
}

resource "aws_ec2_tag" "myec2" {
  for_each = { "Name" : "demo-ec2t", "Owner" : "dev" }

  resource_id = module.ec2_instance.resourse_id
  key         = each.key
  value       = each.value
}