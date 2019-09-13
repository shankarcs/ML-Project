resource "aws_sagemaker_notebook_instance" "ni" {
  name 			= "${var.name}"
  role_arn              = "${var.aws_iam_role}"
   instance_type      	= "${lookup(var.instance_type,terraform.workspace)}"
  lifecycle_config_name = "${aws_sagemaker_notebook_instance_lifecycle_configuration.basic_lifecycle.name}"

  tags = {
    Name = "maf"
  }

  depends_on = ["aws_s3_bucket_object.s3_maf_detection_notebook"]
}

resource "aws_sagemaker_model" "maf_model" {
  name               = "${var.model_name}"
  execution_role_arn = "${var.aws_iam_role}"

  primary_container {
    image = "421089506438.dkr.ecr.us-east-1.amazonaws.com/${var.image_name}"
  }
}

data "template_file" "instance_init" {
  template = "${file("${path.module}/../usecase-setup/template/sagemaker_instance_init.sh")}"

  vars = {
    s3_bucket_name_1     = "${var.s3_bucket_name_1}-${var.aws_region}"
    aws_region           = "${var.aws_region}"
    function_bucket_name = "${var.function_bucket_name}"
project_name="${var.project_name}"
notebook_name="${var.notebook_name}"
  }
}

resource "aws_sagemaker_notebook_instance_lifecycle_configuration" "basic_lifecycle" {
  name     = "${var.lifecycle_name}"
  on_start = "${base64encode(data.template_file.instance_init.rendered)}"
}
