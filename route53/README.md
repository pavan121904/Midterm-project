# Connecting a Domain to CloudFront with AWS Route 53

This Terraform configuration demonstrates how to connect your domain with an AWS CloudFront distribution using AWS Route 53. By associating your domain with a CloudFront distribution, you can serve your website content through a Content Delivery Network (CDN) for faster and more reliable delivery.

## Prerequisites

Before using this Terraform configuration, make sure you have:

- [Terraform](https://www.terraform.io/downloads.html) installed.
- An [AWS account](https://aws.amazon.com/) and the [AWS CLI](https://aws.amazon.com/cli/) configured with valid access and secret keys.
- A registered domain name (e.g., mahiclub.co.uk) and a hosted zone in AWS Route 53.