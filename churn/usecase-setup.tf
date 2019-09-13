module "usecase-setup"{

source = "../modules/usecase-setup"
name = "${var.name}"
s3_bucket_name_1 = "${var.s3_bucket_name_1}"
lifecycle_name="${var.lifecycle_name}"
model_name="${var.model_name}"
project_name="${var.project_name}"
notebook_name="${var.notebook_name}"
image_name="${var.image_name}"
}
