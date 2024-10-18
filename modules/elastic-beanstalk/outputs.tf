output "environment_url" {
  description = "URL of the Elastic Beanstalk environment"
  value       = "http://${var.domain}.${var.region}.elasticbeanstalk.com"
}

output "domain" {
  value = var.domain
}
