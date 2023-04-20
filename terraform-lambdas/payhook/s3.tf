resource "aws_s3_object" "lambda_paths" {
  key        = "/payhook/releases/"
  bucket     = "lawly-lambdas-${terraform.workspace}"
}