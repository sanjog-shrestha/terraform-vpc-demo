stack {
  name        = "terraform-vpc-demo"
  description = "Simple VPC stack"
}

deployment "default" {
}

component "vpc" {
  source     = "./"

}