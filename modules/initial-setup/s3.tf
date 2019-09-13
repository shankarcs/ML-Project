resource "aws_s3_bucket" "s3_bucket_1" {
#  bucket        = "${var.s3_bucket_name_1}-${var.aws_region}"
   bucket        = "${var.s3_bucket_name_1}"
  acl           = "private"
  force_destroy = true

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = {
    Name = "maf"
  }
}
