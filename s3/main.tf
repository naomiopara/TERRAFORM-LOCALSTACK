resource "aws_s3_bucket" "naomi-bucket" {
  bucket = "naomi-bucket"
}


resource "aws_s3_bucket_versioning" "naomi-demo" {
  bucket = aws_s3_bucket.naomi-bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}
