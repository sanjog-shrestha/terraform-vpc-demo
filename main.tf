terraform {
  required_version = ">=1.3.0"

  cloud {
    organization = "legarasis"

    workspaces {
      name = "terraform-vpc-demo"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Provider blocks are not allowed in stack/component modules when using Terraform Cloud and the new HCL stack/component structure.
# Instead, provider configuration must be passed into the component/module from the stack using the "providers" argument,
# and not included directly in the component/module (i.e., no 'provider "aws" { ... }' allowed here).
#
# Remove any provider block or explicit configuration from this component/module.
# The provider will be configured from the stack/parent via the "providers" argument.

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "example-vpc-1"
  }
}