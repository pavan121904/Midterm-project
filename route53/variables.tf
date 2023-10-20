variable "domain_name" {
  description = "The domain name"
  type        = string
}

variable "cf_domain_name" {
  description = "The CloudFront distribution domain name"
  type        = string
}

variable "name_servers" {
  description = "A list of name servers for your domain"
  type        = list(string)
}
