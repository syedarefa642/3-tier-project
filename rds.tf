resource "aws_db_subnet_group" "rds_subnet_group" {
  name = "rds-subnet-group"

  subnet_ids = [
    aws_subnet.private.id,
    aws_subnet.private2.id
  ]

  tags = {
    Name = "RDS Subnet Group"
  }
}

resource "aws_db_instance" "postgres_db" {
  identifier = "postgres-db"

  engine         = "postgres"
  engine_version = "17.5"

  instance_class = "db.t3.micro"

  allocated_storage = 20
  storage_type      = "gp3"

  db_name  = "postgres"
  username = "postgres"
  password = "DevOps123!"

  db_subnet_group_name   = aws_db_subnet_group.rds_subnet_group.name
  vpc_security_group_ids = [aws_security_group.db_sg.id]

  publicly_accessible = false
  multi_az            = false

  skip_final_snapshot = true
  deletion_protection = false

  tags = {
    Name = "PostgreSQL-RDS"
  }
}