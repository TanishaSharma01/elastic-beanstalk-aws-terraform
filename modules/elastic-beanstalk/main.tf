resource "aws_elastic_beanstalk_application" "app" {
  name        = var.app_name
  description = "Elastic Beanstalk Application for ${var.app_name}"
}

resource "aws_elastic_beanstalk_application_version" "app_version" {
  name        = "${var.app_name}-v1"
  application = aws_elastic_beanstalk_application.app.name
  description = "Application version ${var.app_name} - v1"
  bucket      = var.bucket_name
  key         = var.war_file_key
}

resource "aws_s3_object" "default" {
  bucket = var.bucket_name
  key    = var.war_file_key
  source = var.war_file_path
}

resource "aws_elastic_beanstalk_environment" "env" {
  name                = var.env_name
  application         = aws_elastic_beanstalk_application.app.name
  solution_stack_name = var.solution_stack_name
  cname_prefix        = var.domain

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "InstanceType"
    value     = "t2.micro"
  }

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "IamInstanceProfile"
    value     = var.instance_profile
  }

  setting {
    namespace = "aws:elasticbeanstalk:environment"
    name      = "EnvironmentType"
    value     = "SingleInstance"
  }

  setting {
    namespace = "aws:elasticbeanstalk:environment"
    name      = "ServiceRole"
    value     = var.service_role
  }

  setting {
    namespace = "aws:ec2:vpc"
    name      = "VPCId"
    value     = var.vpc_id
  }

  setting {
    namespace = "aws:ec2:vpc"
    name      = "Subnets"
    value     = var.subnet_id
  }
}