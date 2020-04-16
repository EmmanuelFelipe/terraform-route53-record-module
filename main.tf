data "aws_route53_zone" "zone" {
  name = var.domain_name
}

resource "aws_route53_record" "main" {
  zone_id = data.aws_route53_zone.zone.zone_id
  name    = format("%s.%s", var.cluster_identifier_prefix, var.domain_name)
  type    = "CNAME"
  ttl     = "300"
  records = list(var.app_name)
}