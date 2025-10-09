# output "subnet_id" {
#   value = { for k, s in aws_subnet.subnet : k => s.id }
# }


output "subnet_id" {

  value = aws_subnet.subnet.id
}
