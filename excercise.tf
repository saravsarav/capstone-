provider "aws" {

  region = "us-east-1"

}
 
# 1. Define the base network container

resource "aws_vpc" "sandbox_vpc" {

  cidr_block           = "10.0.0.0/16" # Provides 65,536 private IP addresses

  instance_tenancy     = "default"

  enable_dns_support   = true          # Required for AWS internal DNS resolution

  enable_dns_hostnames = true          # Gives EC2 instances human-readable DNS names
 
  tags = {

    Name        = "lab1-sandbox-vpc"

    Environment = "learning"

  }

}
 
# 2. Output critical attributes to verify creation

output "vpc_id" {

  value       = aws_vpc.sandbox_vpc.id

  description = "The generated unique AWS tracking ID for your VPC"

}
 
output "vpc_arn" {

  value       = aws_vpc.sandbox_vpc.arn

  description = "The Amazon Resource Name for security policies"

}

 
