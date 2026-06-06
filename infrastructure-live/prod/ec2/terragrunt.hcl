include "root" {
  path = find_in_parent_folders("root.hcl")
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
    vpc_id             = try(dependency.vpc.outputs.vpc_id, "")
    subnet_id          = try(dependency.vpc.outputs.public_subnet_ids[0], "")
    public_subnet_list = try(dependency.vpc.outputs.public_subnet_ids, [])
    
  }
)