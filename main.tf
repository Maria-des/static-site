resource "aws_s3_bucket" "backet1" {
  bucket = "myterabucket"
  acl    = "public-read"
  website {
    index_document = "index.html"
    error_document = "error.html"
  }
  tags = {
    Name        = "Maria bucket"
  }
}
resource "aws_s3_bucket_object" "index" {
  source = "index.html"
  bucket = "myterabucket"
  acl    = "public-read"
  key = "index.html"
  content_type = "text/html"
}
