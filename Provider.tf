# terraform {
#   required_providers {
#     aws = {
#       source = "hashicorp/aws"
#       version = "4.49.0"
#     }
#   }
# }

# Variables:

variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "key_name" {}
variable "private_key_path" {}
variable "region" {
  default = "ap-south-1"
}


# Provider:

provider "aws" {
  region  = "ap-south-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}