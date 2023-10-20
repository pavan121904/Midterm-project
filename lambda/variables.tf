# Define input variables for the DynamoDB table name and Lambda function name
variable "dynamodb_table_name" {
  type        = string
  description = "The name of the DynamoDB table"
}

variable "lambda_function_name" {
  type        = string
  description = "The name of the Lambda function"
}
