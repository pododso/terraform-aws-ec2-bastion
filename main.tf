resource "aws_security_group" "security_group" {
  name   = "${var.name}-sg"
  vpc_id = var.vpc_id
  tags   = var.tags
}

resource "aws_security_group_rule" "egress_allow_all" {
  type              = "egress"
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = "0"
  protocol          = "-1"
  security_group_id = aws_security_group.security_group.id
  to_port           = "0"
}

resource "aws_security_group_rule" "ingress_allow_all_22" {
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = "22"
  protocol          = "tcp"
  security_group_id = aws_security_group.security_group.id
  to_port           = "22"
}

resource "aws_instance" "instance" {
  ami                         = var.ami
  disable_api_termination     = true
  instance_type               = var.instance_type
  key_name                    = var.key_name
  vpc_security_group_ids      = [aws_security_group.security_group.id]
  subnet_id                   = var.subnet_id
  associate_public_ip_address = true
  tags                        = var.tags
  volume_tags                 = var.tags
}
