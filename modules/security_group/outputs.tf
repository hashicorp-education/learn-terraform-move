# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "security_group_id" {
  description = "The security group ID passed from this module"
  value       = aws_security_group.sg_8080.id
}
