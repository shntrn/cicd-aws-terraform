variable "backend_name" {
  type        = string
  description = "name for beanstalk"
}

variable "backend_env_name" {
  type        = string
  default = "nodejs-chess-env"
  description = "name for beanstalk"
}

variable "db_endpoint" {}
variable "db_user" {}
variable "db_pass" {}

variable "vpc_id" {}

variable "vpc_public_ids" {}