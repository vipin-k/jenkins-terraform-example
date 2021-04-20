resource "aws_s3_bucket" "s3-demo" {
  bucket = var.bucketname
  acl    = "private"

  tags = {
    Name        = var.bucketname
    Environment = var.namespace
  }
}