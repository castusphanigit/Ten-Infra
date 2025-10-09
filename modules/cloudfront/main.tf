# ----------------------------
# CloudFront Distribution
# ----------------------------
resource "aws_cloudfront_distribution" "ten_cloudfront" {
  enabled             = true
  default_root_object = "/"

  origin {
    domain_name = var.alb_dns_name
    origin_id   = "alb-origin"

    custom_origin_config {
      http_port              = 80
      https_port             = 443
      origin_protocol_policy = "https-only" # use https-only if ALB listener is HTTPS
      origin_ssl_protocols   = ["TLSv1.2"]
    }
  }

  default_cache_behavior {
    allowed_methods  = ["GET", "HEAD", "OPTIONS"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = "alb-origin"

    forwarded_values {
      query_string = true
      cookies {
        forward = "all"
      }
    }

    viewer_protocol_policy = "redirect-to-https"
    min_ttl                = 0
    default_ttl            = 3600
    max_ttl                = 86400
  }

  aliases = var.alternative_domain_names # ✅ Alternate domain names

  price_class = "PriceClass_100"

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn      = var.acm_cert_arn
    ssl_support_method       = "sni-only"
    minimum_protocol_version = "TLSv1.2_2021"
  }

  tags = {
    Name = "cloudfront-alb"
  }
}

output "name" {
  value = aws_cloudfront_distribution.ten_cloudfront.domain_name
}

output "zone_id" {
  value = aws_cloudfront_distribution.ten_cloudfront.hosted_zone_id
}
# # ----------------------------
# # Route53 Alias Record to CloudFront
# # ----------------------------
# resource "aws_route53_record" "cf_alias" {
#   zone_id = var.r53_zone_id
#   name    = var.r53_name
#   type    = "A"

#   alias {
#     name                   = aws_cloudfront_distribution.ten_cloudfron.domain_name
#     zone_id                = var.aliase_zone_id
#     evaluate_target_health = false
#   }
# }