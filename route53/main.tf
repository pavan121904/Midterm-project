data "aws_route53_zone" "example" {
  name = "example.com"  # Replace with your domain name
}

output "example_zone_id" {
  value = data.aws_route53_zone.example.id
}

resource "aws_route53_record" "cloudfront" {
  zone_id = "your_zone_id"  # Replace with your Route 53 hosted zone ID
  name    = "example.com"  # Replace with your desired domain or subdomain
  type    = "A"
  alias {
    name                   = "your-cloudfront-distribution-domain.cloudfront.net"  # Replace with your CloudFront distribution domain
    zone_id                = "Z2FDTNDATAQYW2"  # The fixed CloudFront zone ID
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "name_servers" {
  count = length(var.name_servers)

  zone_id = "your_zone_id"
  name    = "example.com"  # Replace with your domain name
  type    = "NS"
  ttl     = "300"
  records = [var.name_servers[count.index]]
}
