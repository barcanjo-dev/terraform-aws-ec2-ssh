resource "aws_s3_bucket" "bucket" {
  bucket = "bmqa-tf-bucket"

  tags = {
    Name = "My bucket"
  }
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.bucket.id
  acl    = "private"
}