output "bucket_name" {
  value = {
    bukt_nm = aws_s3_bucket.s3-demo.bucket
  }
}
