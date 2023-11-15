variable "dyanamic-sg-prod" {
  type    = list(any)
  default = [80, 443, 22]
}

resource "aws_security_group" "sg-prod-module" {
  name        = "security-group-production"
  description = "Security Group for Production Env"

  dynamic "ingress" {
    for_each = var.dyanamic-sg-prod
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
}

output "sg_id" {
  value = aws_security_group.sg-prod-module.id
}

