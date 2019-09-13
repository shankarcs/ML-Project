variable "aws_region" {
default = "us-east-1"
}
variable "aws_iam_role_name" {}

#variable "aws_profile" {}


variable "aws_profile" {
  default = "default"
}

variable "aws_iam_policy_name" {}

variable "s3_bucket_name_1" {
  description = "New bucket for storing the Amazon SageMaker model and training data."
  default     = "mafsagemaker-1"
}

