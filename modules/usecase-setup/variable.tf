variable "aws_iam_role" {
  #  default = "arn:aws:iam::194256688072:role/service-role/AmazonSageMaker-ExecutionRole-20190805T232790"
  default = "arn:aws:iam::421089506438:role/service-role/AmazonSageMaker-ExecutionRole-20190628T235575"
}

variable "aws_region" {
  default = "us-east-1"
}

variable "aws_profile" {
  default = "default"
}

#variable "s3_bucket_name_1" {
#  description = "New bucket for storing the Amazon SageMaker model and training data."
#  default     = "mafsagemaker"
#}

variable "function_bucket_name" {
  default = "maf-bucket"
}

variable "folders" {
  default = ["input", "output"]
}

#variable "name"{
#  default = "maf-notebook-instance-1" 
#}

variable "name" {}
variable "s3_bucket_name_1" {}

variable "instance_type"{
type = "map"
default = {
default = "ml.t2.medium"
stage = "ml.t2.large"
dev = "ml.t3.medium"
}
}
variable "lifecycle_name" {}
variable "model_name" {}
variable "image_name" {}
variable "project_name" {}
variable "notebook_name" {}

