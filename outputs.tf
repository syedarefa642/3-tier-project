output "web_server_public_ip" {
  description = "Public IP of Web Server"
  value       = aws_instance.web_server.public_ip
}

output "app_server_public_ip" {
  description = "Public IP of App Server"
  value       = aws_instance.app_server.public_ip
}

output "rds_endpoint" {
  value = aws_db_instance.postgres_db.endpoint
}

output "rds_port" {
  value = aws_db_instance.postgres_db.port
}

output "rds_identifier" {
  value = aws_db_instance.postgres_db.id
}