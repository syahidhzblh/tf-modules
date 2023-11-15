provider "aws" {
  region = "ap-southeast-2"
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.5.0"

  name = "single-instance"

  ami           = "ami-0df4b2961410d4cff"
  instance_type = "t2.micro"
  key_name      = "server-keypair"
  subnet_id     = "subnet-086e050cb1bb60490"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
