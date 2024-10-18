module "elastic_beanstalk" {
  source              = "./modules/elastic-beanstalk"
  app_name            = "tanisha-app"
  env_name            = "tanisha-app-env"
  domain              = "tanisha-app"
  solution_stack_name = "64bit Amazon Linux 2023 v5.1.7 running Tomcat 10 Corretto 17"
  instance_profile    = "tanisha-ec2-role"
  service_role        = "arn:aws:iam::876724398547:role/tanisha-ec2-role"
  vpc_id              = "vpc-07047976ffcfb7d3a"
  subnet_id           = "subnet-077aa5123fb398855"
  bucket_name         = "elasticbeanstalk-us-east-1-876724398547"
  war_file_key        = "calculator-project.war"
  war_file_path       = "calculator-project/target/calculator-project.war"
}
