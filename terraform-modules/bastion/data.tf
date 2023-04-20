# data "terraform_remote_state" "infrastructure" {
#   backend = "s3"
#   config = {
#     bucket  = "lawly-terraform-state-${terraform.workspace}"
#     key     = "env://${terraform.workspace}/infrastructure/terraform-state.tfstate"
#     region  = "eu-north-1"
#     profile = terraform.workspace
#   }
# }

data "aws_route53_zone" "bastion" {
  name         = "lawly.io"
  private_zone = false
}