variable "instance_type" {
  type = string
  default = "t3.micro"  
}

variable "subnet_id" {
  type = string
}

variable "ami" {
  type = string
}

variable "ec2_tags" {
  type = map(string)
  default = {}
  
}