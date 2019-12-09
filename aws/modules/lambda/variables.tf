#-----------------------------------------------------------
# Global or/and default variables
#-----------------------------------------------------------
variable "name" {
  description = "Name to be used on all resources as prefix"
  default     = "TEST"
}

variable "region" {
  description = "The region where to deploy this code (e.g. us-east-1)."
  default     = "us-west-2"
}

variable "environment" {
    description = "Environment for service"
    default     = "STAGE"
}

variable "orchestration" {
    description = "Type of orchestration"
    default     = "Terraform"
}

variable "createdby" {
    description = "Created by"
    default     = "Vitaliy Natarov"
}

#-----------------------------------------------------------
# aAWS lambda provisioned concurrency config
#-----------------------------------------------------------
variable "enable_lambda_provisioned_concurrency_config_alias" {
  description   = "Enable lambda_provisioned_concurrency_config with alias"
  default       = "false"
}

variable "lambda_provisioned_concurrency_config_version" {
  description   = "Enable lambda_provisioned_concurrency_config with version"
  default       = "false"
}