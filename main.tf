# -----------------------------------------------------
# Keypair Creation
# -----------------------------------------------------

resource "aws_key_pair" "auth_key" {

  key_name   = "${var.project_name}-${var.project_env}"
  public_key = file("mykey.pub")
  tags = {
    Name    = "${var.project_name}-${var.project_env}"
    project = var.project_name
    env     = var.project_env
    owner   = var.project_owner
  }
}

# -----------------------------------------------------
# Webserver SecurityGroup
# -----------------------------------------------------

resource "aws_security_group" "http_access" {

  name        = "${var.project_name}-${var.project_env}-http-access"
  description = "${var.project_name}-${var.project_env}-http-access"


  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name    = "${var.project_name}-${var.project_env}-http-access"
    project = var.project_name
    env     = var.project_env
    owner   = var.project_owner
  }
}



