resource "aws_s3_bucket" "denied" {
  bucket = "pictures-of-snyky-dogs-terraform-1"
  acl    = var.s3_acl

}