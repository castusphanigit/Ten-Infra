resource "aws_ecr_repository" "ten-ecr" {
  name = var.ecr_name
  image_scanning_configuration { scan_on_push = var.scan_on_push }
  tags = var.ecr_tags
}

output "repository_url" { value = aws_ecr_repository.ten-ecr.repository_url }