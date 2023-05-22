resource "aws_s3_bucket" "dev" {
  bucket = "mentorei-dev"

  tags = {
    Name        = "mentorei-dev"
    Environment = "development"
  }
}