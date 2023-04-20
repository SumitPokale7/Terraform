resource "aws_s3_object" "lambda_paths" {
  key        = "/auth/releases/"
  bucket     = "lawly-lambdas-${terraform.workspace}"
}