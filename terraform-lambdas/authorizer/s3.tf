resource "aws_s3_object" "lambda_paths" {
  key        = "/authorizer/releases/"
  bucket     = "lawly-lambdas-${terraform.workspace}"
}