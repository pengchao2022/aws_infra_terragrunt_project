include "root" {
  path = find_in_parent_folders("terragrunt.hcl")
}

# specify terraform modules
terraform {
  source = "../../../infrastructure-modules/ec2"
}

dependency "vpc" {
  config_path = "../infrastructure-live/vpc"
}
# dynamicly load variables
inputs = read_terragrunt_config("inputs.hcl").inputs