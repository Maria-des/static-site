resource "aws_s3_bucket" "backet1" {
  bucket = "myterabucket"
  acl    = "public-read"

  tags = {
    Name        = "Maria bucket"
  }
}
