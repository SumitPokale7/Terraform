resource "aws_s3_object" "lambda_paths" {
  key        = "/organization/releases/"
  bucket     = "lawly-lambdas-${terraform.workspace}"
}