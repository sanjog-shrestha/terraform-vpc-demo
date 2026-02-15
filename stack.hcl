stack {
  name        = "terraform-vpc-demo"
  description = "Simple VPC stack"
}

deployment "default" {
  inputs = {}
}

component "vpc" {
  source     = "."
  deployments = {
    default = {}
  }
}
