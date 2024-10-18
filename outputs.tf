output "environment_url" {
  description = "URL of the Elastic Beanstalk environment"
  value       = "http://${module.elastic_beanstalk.domain}.${var.region}.elasticbeanstalk.com"
}
