module "staging-server" {
  source = "../../modules/production"
}

resource "aws_instance" "name" {
  ami                    = "ami-0df4b2961410d4cff"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [module.staging-server.sg_id]
}
