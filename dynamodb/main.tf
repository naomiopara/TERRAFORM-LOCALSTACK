resource "aws_dynamodb_table" "students" {
  name         = var.table_name
  billing_mode = "PAY_PER_REQUEST"

  hash_key = "StudentID"

  attribute {
    name = "StudentID"
    type = "S"
  }

  tags = {
    Name        = var.table_name
    Environment = "local"
    ManagedBy   = "Terraform"
    Owner       = "Naomi"
    
  }
}