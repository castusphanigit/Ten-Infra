# -------------------------
# Subnet Group for RDS
# -------------------------
resource "aws_db_subnet_group" "rds_subnet" {
  name       = var.db_subnet_group
  subnet_ids = var.subnet_ids
}


# -------------------------
# Read existing secret
# -------------------------

data "aws_secretsmanager_secret" "db_secret" {
  name = var.db_secret_name
}

data "aws_secretsmanager_secret_version" "db_secret_value" {
  secret_id = data.aws_secretsmanager_secret.db_secret.id
}

# Decode the secret JSON
locals {
  db_credentials = jsondecode(data.aws_secretsmanager_secret_version.db_secret_value.secret_string)
  # expecting secret JSON like: { "username": "admin", "password": "mypassword" }
}

# -------------------------
# RDS PostgreSQL Instance
# -------------------------
resource "aws_db_instance" "postgres" {
  identifier             = var.rds_name
  allocated_storage      = 20
  storage_type           = "gp3"
  engine                 = "postgres"
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  db_name                = var.db_name                   # database name
  username               = local.db_credentials.username # master username
  password               = local.db_credentials.password # use Terraform variable / secret
  port                   = 5432
  backup_retention_period = 7
  iam_database_authentication_enabled = true
  storage_encrypted = true
  db_subnet_group_name   = aws_db_subnet_group.rds_subnet.id
  vpc_security_group_ids = var.security_group_ids
  publicly_accessible    = false
  skip_final_snapshot    = true

  tags = var.rds_tags
}


