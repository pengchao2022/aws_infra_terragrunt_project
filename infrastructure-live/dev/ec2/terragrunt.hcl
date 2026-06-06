include "root" {
  path = find_in_parent_folders("terragrunt.hcl")
}

# specify terraform modules
terraform {
  source = "../../../infrastructure-modules/ec2"
}

dependency "vpc" {
  config_path = "../vpc"
}
# dynamicly load variables
inputs = merge(
  read_terragrunt_config("inputs.hcl").inputs,
  {
    subnet_id = dependency.vpc.outputs.subnet_id
  }
)