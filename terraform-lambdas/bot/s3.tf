resource "aws_s3_object" "lambda_paths" {
  key        = "/bot/releases/"
  bucket     = "lawly-lambdas-${terraform.workspace}"
}