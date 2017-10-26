ouptut "region" {
  description = "The region of all VPC resources"
  value       = "${aws_vpc.this.region}"
}

VPC output "vpc_id" {
  description = "The ID of the VPC"
  value       = "${aws_vpc.this.id}"
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = "${aws_vpc.this.cidr_block}"
}

output "default_security_group_id" {
  description = "The ID of the security group created by default on VPC creation"
  value       = "${aws_vpc.this.default_security_group_id}"
}

output "default_network_acl_id" {
  description = "The ID of the default network ACL"
  value       = "${aws_vpc.this.default_network_acl_id}"
}

# Subnets
output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = ["${aws_subnet.private.*.id}"]
}

output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = ["${aws_subnet.public.*.id}"]
}

output "database_subnets" {
  description = "List of IDs of database subnets"
  value       = ["${aws_subnet.database.*.id}"]
}

output "database_subnet_group" {
  description = "ID of database subnet group"
  value       = "${aws_db_subnet_group.database.id}"
}

output "elasticache_subnets" {
  description = "List of IDs of elasticache subnets"
  value       = ["${aws_subnet.elasticache.*.id}"]
}

output "elasticache_subnet_group" {
  description = "ID of elasticache subnet group"
  value       = "${aws_elasticache_subnet_group.elasticache.id}"
}

# Route tables
output "public_route_table_ids" {
  description = "List of IDs of public route tables"
  value       = ["${aws_route_table.public.*.id}"]
}

output "private_route_table_ids" {
  description = "List of IDs of private route tables"
  value       = ["${aws_route_table.private.*.id}"]
}

output "nat_ids" {
  description = "List of allocation ID of Elastic IPs created for AWS NAT Gateway"
  value       = ["${aws_eip.nat.*.id}"]
}

output "nat_public_ips" {
  description = "List of public Elastic IPs created for AWS NAT Gateway"
  value       = ["${aws_eip.nat.*.public_ip}"]
}

output "natgw_ids" {
  description = "List of NAT Gateway IDs"
  value       = ["${aws_nat_gateway.this.*.id}"]
}

# Internet Gateway
output "igw_id" {
  description = "The ID of the Internet Gateway"
  value       = "${aws_internet_gateway.this.id}"
}

# VPC Endpoints
output "vpc_endpoint_s3_id" {
  description = "The ID of VPC endpoint for S3"
  value       = "${aws_vpc_endpoint.s3.id}"
}

output "vpc_endpoint_dynamodb_id" {
  description = "The ID of VPC endpoint for DynamoDB"
  value       = "${aws_vpc_endpoint.dynamodb.id}"
}
