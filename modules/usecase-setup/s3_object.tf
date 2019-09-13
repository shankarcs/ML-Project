resource "aws_s3_bucket_object" "s3_maf_detection_notebook" {
  bucket = "${var.s3_bucket_name_1}-${var.aws_region}"
  key    = "/${var.project_name}/notebooks/${var.notebook_name}"
  source = "${path.module}/../usecase-setup/source/notebook/${var.notebook_name}"
  etag   = "${filemd5("${path.module}/../usecase-setup/source/notebook/${var.notebook_name}")}"
}

resource "aws_s3_bucket_object" "s3_folder" {
  bucket = "${var.s3_bucket_name_1}-${var.aws_region}"
  count  = "${length(var.folders)}"

  key    = "/${var.project_name}/${element(var.folders,count.index)}/"
  source = "/dev/null"
}
