inputs = {
  vpc_cidr    = "172.21.0.0/16"
  subnet_cidr = "172.21.0.0/24"
  vpc_tags = {
    "Name" = "maxwell-prod" # plese be noticed Name the N must be upper case
                           # if you use name then will not display in console
  }
  subnet_tags = {
    "Name" = "maxwell-prod"
  }
}