module "S3" {
  source    = "./modules/S3" #A
  namespace = var.namespace #B
  bucketname = var.bucketname
}