variable "domain_name" {
  default = "joshuamkite.com"
}

variable "region" {
  default = "us-east-1"
}

variable "tags" {
  type = map(string)
  default = {
    Owner   = "Joshua"
    Project = "aws_acm_certificate_joshuamkite.com"
    repo    = "git@github.com:joshuamkite/aws_acm_certificate_joshuamkite.com.git"
  }
}

resource "aws_acm_certificate" "joshuamkite_com" {
  domain_name       = join(".", ["*", var.domain_name])
  validation_method = "DNS"
  lifecycle {
    create_before_destroy = true
  }
}

data "aws_route53_zone" "joshuamkite_com" {
  name         = var.domain_name
  private_zone = false
}

output "aws_acm_certificate_id" {
  value = aws_acm_certificate.joshuamkite_com.id
}
