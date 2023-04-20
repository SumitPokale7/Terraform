module "cloudfront" {
  source             = "../terraform-modules/cloudfront"
  cloudfront_aliases = var.cloudfront_aliases
  tags               = var.tags
  cache_behavior     = local.cache_behavior_static
  bucket_name        = "lawly-${terraform.workspace}"
  name               = "cloudfront-${terraform.workspace}"
  oac_name           = "lawly-origin-access-control-${terraform.workspace}"
}

module "bot-cloudfront" {
  source             = "../terraform-modules/cloudfront"
  cloudfront_aliases = var.cloudfront_aliases_bot
  tags               = var.tags
  cache_behavior     = local.cache_behavior_bot
  bucket_name        = "lawlybot-${terraform.workspace}"
  name               = "bot-cloudfront-${terraform.workspace}"
  oac_name           = "bot-lawly-origin-access-control-${terraform.workspace}"
}
