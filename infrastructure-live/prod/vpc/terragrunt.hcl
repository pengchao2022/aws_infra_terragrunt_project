include "root" {
  path = find_in_parent_folders("root.hcl")
}

# Specify the corresponding Terraform module source code
terraform {
  source = "../../../infrastructure-modules/vpc"
}

# Dynamically loading input variables
inputs = read_terragrunt_config("inputs.hcl").inputs