output "instance_id" {
  description = "The ID of the instance"
  value       = aws_instance.instancia_ejercicio_2.id
}

output "public_ip" {
  description = "The public IP of the instance"
  value       = aws_instance.instancia_ejercicio_2.public_ip
}

output "security_group_id" {
  description = "The ID of the security group"
  value       = aws_security_group.grupo_seguridad_ejercicio_2.id
}
