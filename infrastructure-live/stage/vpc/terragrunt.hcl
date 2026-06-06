include "root" {
  path = find_in_parent_folders("terragrunt.hcl")
}

# 2. 指定对应的 Terraform 模块源码
terraform {
  source = "../../../infrastructure-modules/vpc"
}

# 3. 动态加载输入变量
inputs = read_terragrunt_config("inputs.hcl").inputs