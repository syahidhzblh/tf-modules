resource "aws_instance" "ec2-staging" {
  ami             = data.aws_ami.ubuntu.id
  instance_type   = var.instance_type
  security_groups = ["default"]

  tags = {
    Name = "staging-server"
  }
}
