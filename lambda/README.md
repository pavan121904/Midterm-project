# AWS Lambda Function with DynamoDB Access

This Terraform configuration demonstrates how to create an AWS Lambda function with full access to DynamoDB using Terraform. Lambda functions allow you to run code without provisioning or managing servers, and DynamoDB is Amazon's NoSQL database service.

## Prerequisites

Before using this Terraform configuration, make sure you have:

- [Terraform](https://www.terraform.io/downloads.html) installed.
- [AWS CLI](https://aws.amazon.com/cli/) installed and configured with valid access and secret keys.
- An AWS Lambda function code (`lambda_function.py`) and a DynamoDB table (e.g., `website-121904`) that you want the Lambda function to interact with.

