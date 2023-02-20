# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

resource "aws_security_group" "sg_8080" {
  vpc_id = var.vpc_id

  name        = "terraform-learn-move-sg"
  description = "Security Group managed by Terraform"
}

resource "aws_security_group_rule" "ingress_rule" {
  type                     = "ingress"
  description              = "HTTP"
  security_group_id        = aws_security_group.sg_8080.id

  protocol                 = "tcp"
  cidr_blocks              = ["0.0.0.0/0"]

  from_port                = 8080
  to_port                  = 8080
}

resource "aws_security_group_rule" "egress_rule" {
  type                     = "egress"
  description              = "All protocols"
  security_group_id        = aws_security_group.sg_8080.id

  protocol                 = "all"
  cidr_blocks              = ["0.0.0.0/0"]

  from_port                = -1
  to_port                  = -1
}
