stack {
  name        = "terraform-vpc-demo"
  description = "Simple VPC stack"
}

deployment "default" {
  inputs = {}
}

component "vpc" {
  source     = "git::https://github.com/sanjog-shrestha/terraform-vpc-demo.git//"
  deployment = deployment.default
}
