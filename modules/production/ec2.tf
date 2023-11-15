# resource "aws_instance" "ec2-prod" {
#   ami                    = data.aws_ami.ubuntu.id
#   instance_type          = "t2.small"
#   vpc_security_group_ids = [aws_security_group.sg-prod-module.id]
#   key_name               = var.keypair

#   tags = {
#     Name = "prod-server"
#     Env  = "Production"
#   }
# }
