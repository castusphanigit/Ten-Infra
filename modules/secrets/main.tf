# Read the existing secret metadata
data "aws_secretsmanager_secret" "existing" {
  name = var.existing-secret
}

# Read the existing secret value
data "aws_secretsmanager_secret_version" "existing_value" {
  secret_id = data.aws_secretsmanager_secret.existing.id
}

# Decode existing secret JSON into a map
locals {
  existing_secret_map = jsondecode(data.aws_secretsmanager_secret_version.existing_value.secret_string)
}

# Create a new secret
resource "aws_secretsmanager_secret" "new_secret" {
  name = var.my-new-secret
}

# Create the new secret version with all existing keys
resource "aws_secretsmanager_secret_version" "new_secret_value" {
  secret_id     = aws_secretsmanager_secret.new_secret.id
  secret_string = jsonencode(local.existing_secret_map)
}