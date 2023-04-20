resource "aws_elasticache_subnet_group" "lawly_redis_subnet_group" {
  description = "Subnet group for redis cluster"
  name        = "lawly-redis-${terraform.workspace}"
  subnet_ids  = var.private_subnets
}
