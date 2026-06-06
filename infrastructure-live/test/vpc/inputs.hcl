inputs = {
  vpc_cidr    = "172.22.0.0/16"
  vpc_tags = {
    "Name" = "maxwell-test" # plese be noticed Name the N must be upper case
                           # if you use name then will not display in console
  }
  subnet_tags = {
    "Name" = "maxwell-test"
  }
}