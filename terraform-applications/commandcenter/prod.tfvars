region                     = "eu-north-1"
service_name               = "commandcenter"
application_container_port = [9001]
domain                     = ["admin.lawly.app", "legal.lawly.app", "auth.lawly.app", "dokument.lawly.app", "phpmyadmin.lawly.io"]
additional_domains         = [ "r.lawly.app", "r.lawly.io" ]
fargate_cpu                = "256"
fargate_memory             = "512"
