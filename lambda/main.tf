# ---------------------------
# IAM Role for Lambda
# ---------------------------
resource "aws_iam_role" "lambda_exec" {
  name = "my_lambda_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "lambda.amazonaws.com"
      }
    }]
  })
}

resource "aws_iam_role_policy_attachment" "lambda_logs" {
  role       = aws_iam_role.lambda_exec.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

# ---------------------------
# Package the Lambda code
# ---------------------------
data "archive_file" "lambda_zip" {
  type        = "zip"
  source_dir  = "${path.module}/src" # folder containing my function code
  output_path = "${path.module}/lambda_function.zip"
}

# ---------------------------
# Lambda Function
# ---------------------------
resource "aws_lambda_function" "this" {
  function_name    = "Naomi-localstack-lambda"
  role             = aws_iam_role.lambda_exec.arn
  handler          = "lambda_function.lambda_handler"
  runtime          = "python3.12"
  filename         = data.archive_file.lambda_zip.output_path
  source_code_hash = data.archive_file.lambda_zip.output_base64sha256

  timeout     = 45
  memory_size = 256

  environment {
    variables = {
      ENVIRONMENT = "development"
      PROJECT     = "Localstack"
      OWNER       = "Naomi"
      REGION      = "us-east-1"
      STAGE       = "local"
    }
  }
}

# ---------------------------
# CloudWatch Log Group
# ---------------------------
resource "aws_cloudwatch_log_group" "lambda_logs" {
  name              = "/aws/lambda/${aws_lambda_function.this.function_name}"
  retention_in_days = 7
}

# ---------------------------
# Output the function name/ARN
# ---------------------------
output "lambda_function_name" {
  value = aws_lambda_function.this.function_name
}

output "lambda_function_arn" {
  value = aws_lambda_function.this.arn
}
