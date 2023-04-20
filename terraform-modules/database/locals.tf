locals {
  db_users = {
    "rds-matomo" = {
      secret_name = "matomo"
      username    = "matomo"
      database    = "matomo"
    },
    "rds-se" = {
      username    = "lawly_se"
      secret_name = "se"
      database    = "lawly_se"
    },
    "rds-root" = {
      username    = "lawly_root"
      secret_name = "root"
      database    = "lawly_root"
    },
    "master" = {
      username    = "lawly"
      secret_name = "lawly"
      database    = "admin"
    }
    "rds-fi" = {
      username    = "lawly_fi"
      secret_name = "fi"
      database    = "lawly_fi"
    }
  }
}
