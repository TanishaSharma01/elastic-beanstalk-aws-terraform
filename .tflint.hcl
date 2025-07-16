plugin "aws" {
  enabled = true
  version = "0.32.0"
  source  = "github.com/terraform-linters/tflint-ruleset-aws"
}

plugin "terraform" {
    enabled = true
    version = "0.7.0"
    source  = "github.com/terraform-linters/tflint-ruleset-terraform"
}

# General Terraform specific rules
rule "terraform_module_pinned_source" {
  enabled = true
}

rule "terraform_module_version" {
  enabled = true
}

rule "terraform_required_providers" {
  enabled = true
}

rule "terraform_required_version" {
  enabled = true
}

rule "terraform_documented_outputs" {
  enabled = true
}

rule "terraform_documented_variables" {
  enabled = true
}

rule "terraform_typed_variables" {
  enabled = true
}

rule "terraform_unused_declarations" {
  enabled = true
}

rule "terraform_unused_required_providers" {
  enabled = true
}

rule "terraform_workspace_remote" {
  enabled = true
}

rule "terraform_naming_convention" {
  enabled = true
}

rule "terraform_standard_module_structure" {
  enabled = true
}

# AWS Specific rules
# Ensure EC2 instances have a valid type
rule "aws_instance_invalid_type" {
  enabled = true
}

# Ensure EC2 instances use valid AMIs
rule "aws_instance_invalid_ami" {
  enabled = true
}

# Ensures correct naming format for Elastic Beanstalk environments
rule "aws_elastic_beanstalk_environment_invalid_name_format" {
  enabled = true
}

# Checks for invalid protocols in AWS security groups.
rule "aws_security_group_invalid_protocol" {
  enabled = true
}
