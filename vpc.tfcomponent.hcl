component "vpc" {
  source = "./"
  # Remove the 'providers' block entirely as provider configuration
  # must be inherited from the stack/parent. Do not define it here.
  inputs = {}
}
