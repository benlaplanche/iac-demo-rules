resource "aws_s3_bucket" "allowed" {
  bucket = "pictures-of-snyky-dogs-terraform-1"
  acl    = var.s3_acl

  tags = {
    Name        = "Pictures of Snyky Dogs"
    Environment = "Production"
    Deployment  = "Terraform"
  }
}