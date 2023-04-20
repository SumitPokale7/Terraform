locals {
  tags = {
    Terraform   = "true"
    Environment = terraform.workspace
  }

  lawly_ecr_repos = {
    "agreementcreator-nginx" = {
      scan_on_push = false
    },
    "agreementcreator" = {
      scan_on_push = false
    },
    "api" = {
      scan_on_push = false
    },
    "api-nginx" = {
      scan_on_push = false
    },
    "commandcenter" = {
      scan_on_push = false
    },
    "commandcenter-nginx" = {
      scan_on_push = false
    },
    "cron" = {
      scan_on_push = false
    },
    "cron-nginx" = {
      scan_on_push = false
    },
    "embed" = {
      scan_on_push = false
    },
    "embed-nginx" = {
      scan_on_push = false
    },
    "imageengine" = {
      scan_on_push = false
    },
    "imageengine-nginx" = {
      scan_on_push = false
    },
    "matomo" = {
      scan_on_push = false
    },
    "matomo-nginx" = {
      scan_on_push = false
    },
    "web" = {
      scan_on_push = false
    },
    "web-nginx" = {
      scan_on_push = true
    }
  }

  buckets = {
    "lawly" = {
      versioning_enabled = true
      logging            = false
      grant              = false
      cors_rule          = true
    },
    "lawlyagreements" = {
      versioning_enabled = true
      logging            = false
      grant              = false
      cors_rule          = false
    },
    "lawlybot" = {
      versioning_enabled = true
      logging            = false
      grant              = false
      cors_rule          = false
    }
    "lawly-lambdas" = {
      versioning_enabled = true
      logging            = false
      grant              = false
      cors_rule          = false
    }
    # "lawlybenifyemails" = {
    #   versioning_enabled = true
    #   logging            = false
    #   grant              = false
    # }
  }

  bucket_arns_wildcard = formatlist("%s/*", module.s3.bucket_arns)
  aws_iam_policy_settings = {
    "s3" : {
      actions = [
        "s3:Get*",
        "s3:List*",
        "s3:Put*"
      ]
      resources = concat(module.s3.bucket_arns, local.bucket_arns_wildcard)
    },
    "secretsmanager" : {
      actions = [
        "secretsmanager:Get*",
        "secretsmanager:List*"
      ]
      resources = ["*"]
    },
    "acm" : {
      actions = [
        "acm:Get*",
        "acm:List*",
        "acm:DescribeCertificate",
        "acm:RequestCertificate"
      ]
      resources = ["*"]
    },
    "elb" : {
      actions = [
        "elasticloadbalancing:AddListenerCertificates",
        "elasticloadbalancing:DescribeListenerCertificates",
        "elasticloadbalancing:DescribeListeners"
      ]
      resources = ["*"]
    },
    "sns" : {
      actions = [
        "sns:Publish"
      ]
      resources = ["*"]
    },
    "ses" : {
      actions = [
        "ses:SendEmail",
        "ses:SendRawEmail"
      ]
      resources = ["*"]
    },
    "api" : {
      actions = [
        "apigateway:POST"
      ]
      resources = ["*"]
    }
  }

  secrets = {
    "${terraform.workspace}/scrive" = {
      description             = "Scrive token for ${terraform.workspace}"
      recovery_window_in_days = 0
      secret_string           = "Please add the sensitive value manually by replacing this"
    },
    "${terraform.workspace}/nets" = {
      description             = "Nets token for ${terraform.workspace}"
      recovery_window_in_days = 0
      secret_string           = "Please add the sensitive value manually by replacing this"
    },
    "${terraform.workspace}/roaring" = {
      description             = "Roaring token for ${terraform.workspace}"
      recovery_window_in_days = 0
      secret_string           = "Please add the sensitive value manually by replacing this"
    },
    "${terraform.workspace}/calendly" = {
      description             = "Calendly token for ${terraform.workspace}"
      recovery_window_in_days = 0
      secret_string           = "Please add the sensitive value manually by replacing this"
    }            
  }
}
