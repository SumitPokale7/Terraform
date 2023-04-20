resource "aws_s3_object" "lambda_paths" {
  key        = "/agreement/releases/"
  bucket     = "lawly-lambdas-${terraform.workspace}"
}