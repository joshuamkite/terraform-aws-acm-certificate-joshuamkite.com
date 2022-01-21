# terraform-aws-acm-certificate-joshuamkite.com

This is a basic terraform deployment to deploy a wildcard public certificate for a public DNS hosted zone suitable for use with cloudfront. Given its brevity variables, data, resources, outputs etc are not in separate files and variables are defaulted rather than interpolated. Although an S3 backend is advised (and has been used in my case) it is not included in this repository for reasons of security.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.72.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.72.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_acm_certificate.joshuamkite_com](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate) | resource |
| [aws_route53_zone.joshuamkite_com](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route53_zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | n/a | `string` | `"joshuamkite.com"` | no |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | `"us-east-1"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(string)` | <pre>{<br>  "Owner": "Joshua",<br>  "Project": "aws_acm_certificate_joshuamkite.com",<br>  "repo": "git@github.com:joshuamkite/aws_acm_certificate_joshuamkite.com.git"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_acm_certificate_id"></a> [aws\_acm\_certificate\_id](#output\_aws\_acm\_certificate\_id) | n/a |
