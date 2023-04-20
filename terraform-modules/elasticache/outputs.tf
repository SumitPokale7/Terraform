output "redis_endpoint" {
  value = aws_elasticache_replication_group.lawly_redis_replication_group.primary_endpoint_address
}