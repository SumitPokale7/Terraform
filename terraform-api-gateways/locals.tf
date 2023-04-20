locals {
  tags = {
    Terraform   = "true"
    Environment = terraform.workspace
  }

  api_gateways = {
    "lawly-api" = {
      authorizer_name        = "lawly-api-gateway-authorizer"
      api_gateway_usage_plan = "Organization Plus"
      api_key_source         = "AUTHORIZER"
      path_part              = ["organizations"]
    }
  }
}
