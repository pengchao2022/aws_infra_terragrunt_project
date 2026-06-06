inputs = {
  instance_type = "t3.micro"
  ami = "ami-05cf1e9f73fbad2e2"
  subnet_id = dependency.vpc.outputs.subnet_id
  ec2_tags = {
    "Name" = "maxwell-ec2-dev" # plese be noticed Name the N must be upper case                        
                                # if you use name then will not display in console
  }
  }
