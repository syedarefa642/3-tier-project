output "web_server_public_ip" {
  description = "Public IP of Web Server"
  value       = aws_instance.web_server.public_ip
}

output "app_server_public_ip" {
  description = "Public IP of App Server"
  value       = aws_instance.app_server.public_ip
}

output "db_server_private_ip" {
  description = "Private IP of Database Server"
  value       = aws_instance.db_server.private_ip
}