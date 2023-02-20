# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "public_ip" {
  description = "The Public IP address used to access the instance"
  value       = aws_instance.example.public_ip
}
