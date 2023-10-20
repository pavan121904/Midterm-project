resource "aws_iam_role" "lambda_execution_role" {
  name = "lambda_execution_role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_policy" "dynamodb_full_access" {
  name        = "dynamodb_full_access"
  description = "IAM policy for full DynamoDB access"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action   = "dynamodb:*",
        Effect   = "Allow",
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "attach_dynamodb_policy" {
  policy_arn = aws_iam_policy.dynamodb_full_access.arn
  role       = aws_iam_role.lambda_execution_role.name
}

data "archive_file" "lambda" {
  type        = "zip"
  source_file = "${path.module}/lambda_function.py"  # Provide the correct path to your Lambda function code
  output_path = "${path.module}/lambda_function_payload.zip"
}

resource "aws_lambda_function" "my_lambda_function" {
  filename      = "${path.module}/lambda_function_payload.zip"
  function_name = var.lambda_function_name
  role          = aws_iam_role.lambda_execution_role.arn
  handler       = "lambda_function.lambda_handler"

  source_code_hash = data.archive_file.lambda.output_base64sha256

  runtime = "python3.8"

  environment {
    variables = {
      DYNAMODB_TABLE_NAME = "website-121904"  # Specify your DynamoDB table name
    }
  }
}

output "lambda_function_arn" {
  value = aws_lambda_function.my_lambda_function.arn
}
