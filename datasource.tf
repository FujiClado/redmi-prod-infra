data "aws_route53_zone" "official" {
  name         = var.hosted_zone_name
  private_zone = false
}


