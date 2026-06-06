inputs = {
  vpc_cidr    = "172.20.0.0/16"
  subnet_cidr = "172.20.0.0/24"
  vpc_tags = {
    "name" = "maxwell-dev"
  }
  subnet_tags = {
    "name" = "maxwell-dev"
  }
}