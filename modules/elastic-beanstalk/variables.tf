variable "app_name" {
  description = "Name of the Elastic Beanstalk application"
  type        = string
}

variable "env_name" {
  description = "Name of the Elastic Beanstalk environment"
  type        = string
}

variable "domain" {
  description = "Elastic Beanstalk environment domain name"
}

variable "region" {
  description = "AWS region for the Elastic Beanstalk environment"
  default     = "us-east-1"
}

variable "solution_stack_name" {
  description = "Elastic Beanstalk solution stack name"
  type        = string
}

variable "instance_profile" {
  description = "Instance profile to use for the EC2 instances"
  type        = string
}

variable "service_role" {
  description = "Service role for Elastic Beanstalk"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for the environment"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for the environment"
  type        = string
}

variable "bucket_name" {
  description = "S3 bucket name where the WAR file is stored"
  type        = string
}

variable "war_file_key" {
  description = "S3 key for the WAR file"
  type        = string
}

variable "war_file_path" {
  description = "Local file path to the WAR file for deployment"
  type        = string
}