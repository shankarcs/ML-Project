resource "aws_sagemaker_endpoint_configuration" "maf-endpoint" {
  name = "maf-endpoint-config"

  production_variants {
    variant_name           = "variant-1"
    model_name             = "${aws_sagemaker_model.maf_model.name}"
    initial_instance_count = 1
    instance_type          = "ml.t2.medium"
  }

  tags {
    Name = "maf"
  }
}
