resource "aws_dynamodb_table" "example" {
  name           = var.table_name
  billing_mode   = "PAY_PER_REQUEST"  # You can choose "PROVISIONED" if needed
  hash_key       = "partition_key"  # Replace with your partition key attribute
  stream_enabled = false  # Change to true if you want to enable streams

  attribute {
    name = "partition_key"
    type = "S"  # String data type
  }

  attribute {
    name = var.attribute_name
    type = "N"  # Numeric data type
  }

}
