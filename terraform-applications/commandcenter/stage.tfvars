region                     = "eu-north-1"
service_name               = "commandcenter"
application_container_port = [9001]
additional_domains         = ["phpmyadmin-stage.lawly.io"]
domain                     = ["admin-stage.lawly.io", "legal-stage.lawly.io", "auth-stage.lawly.io", "dokument-stage.lawly.io","r-stage.lawly.io"]
fargate_cpu                = "256"
fargate_memory             = "512"
