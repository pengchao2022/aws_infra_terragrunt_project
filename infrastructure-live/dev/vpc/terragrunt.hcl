include "root" {
  path = find_in_parent_folders("root.hcl")
}


terraform {
  source = "../../../infrastructure-modules/vpc"
  
}

inputs = {
  vpc_cidr = "172.20.0.0/16"
  subnet_cidr = "172.20.0.0/24"
  vpc_tags = {
    "name" = "maxwell"
  }
  subnet_tags = {
    "name" = "maxwell"
  }
}