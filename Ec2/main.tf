resource "aws_instance" "myfirstec2" {
  ami                    = data.aws_ami.amzlinux2.id
  instance_type          = var.instance_type
  key_name             = var.key_name
  tags = {
        Name = var.ec2name
    }
}
