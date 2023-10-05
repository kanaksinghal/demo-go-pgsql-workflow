output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnets" {
  value = module.vpc.public_subnet_ids
}

output "private_subnets" {
  value = module.vpc.private_subnet_ids
}


output "availability_zones" {
  value = module.vpc.availability_zones
}


output "vpc_cidr_block" {
  value = module.vpc.vpc_cidr_blocks
}

output "postgres_host" {
  value = { for k, v in module.tr_component_postgres.postgres_endpoints : k => v}
}







output "postgres_password" {
  value     = { for k, v in module.tr_component_postgres.db_password : k => v}
  sensitive = true
}












