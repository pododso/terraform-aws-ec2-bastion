output "instance_public_ip" {
  description = "Public IP address of the instance"
  value       = aws_instance.instance.public_ip
}

output "security_group_id" {
  description = "Security Group ID used by the instance"
  value       = aws_security_group.security_group.id
}
