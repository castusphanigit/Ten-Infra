output "vpc_id" { value = aws_vpc.ten-vpc.id }
output "internet_gateway_id" {
  value = aws_internet_gateway.this.id
}