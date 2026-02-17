terraform {
  required_version = ">=1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}

resource "aws_sqs_queue" "queue" {
  name = var.queue_name
}

variable "queue_name" {
  type        = string
  description = "Name of the SQS queue"
}

resource "aws_vpc" "main" {
  cidr_block = "10.1.0.0/16"

  tags = {
    Name = "example-vpc"
  }
}
