resource "aws_lb" "this" {
  name                       = var.name
  internal                   = var.internal
  load_balancer_type         = "application"
  subnets                    = var.subnet_ids
  security_groups            = var.security_group_ids
  enable_deletion_protection = false
  tags                       = var.tags
  depends_on = [ aws_lb_target_group.tg ]
}

resource "aws_lb_target_group" "tg" {
  name        = var.tg_name
  port        = var.target_port
  protocol    = var.target_protocol
  vpc_id      = var.vpc_id
  target_type = "ip"
  health_check {
    path     = var.health_path
    matcher  = "200-399"
    interval = 30
  }
}

resource "aws_lb_listener" "https" {
  load_balancer_arn = aws_lb.this.arn
  port              = var.listener_port
  protocol          = var.listener_protocol
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tg.arn
  }
  certificate_arn = var.certificate_arn
}

output "alb_arn" { value = aws_lb.this.arn }
output "dns_name" {
  value = aws_lb.this.dns_name

}
output "tg_arn" { value = aws_lb_target_group.tg.arn }
output "alb_hosted_zone" {
  value = aws_lb.this.zone_id
  
}