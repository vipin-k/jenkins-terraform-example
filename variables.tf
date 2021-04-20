variable "namespace" {
  description = "The project namespace to use for unique resource naming"
  type        = string
}
variable "region" {
  description = "AWS region"
  default     = "us-west-2"
  type        = string
}
variable "bucketname" {
  description = "S3 Bucket Name"
  default     = "bucket-demo-tf-jenkins"
  type        = string
}

