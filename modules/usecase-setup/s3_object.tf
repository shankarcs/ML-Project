resource "aws_s3_bucket_object" "s3_maf_detection_notebook" {
  bucket = "${var.s3_bucket_name_1}-${var.aws_region}"
  key    = "/churn/notebooks/churn_eda.ipynb"
  source = "${path.module}/../usecase-setup/source/notebook/churn_eda.ipynb"
  etag   = "${filemd5("${path.module}/../usecase-setup/source/notebook/churn_eda.ipynb")}"
}

resource "aws_s3_bucket_object" "s3_folder" {
  bucket = "${var.s3_bucket_name_1}-${var.aws_region}"
  count  = "${length(var.folders)}"

  key    = "/churn/${element(var.folders,count.index)}/"
  source = "/dev/null"
}
