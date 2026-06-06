variable "vpc_cidr" {
  type        = string
  default     = "10.20.0.0/16"
  description = "CIDR block for the VPC"
  nullable    = false
  sensitive   = false

  validation {
    condition = can(cidrhost(var.vpc_cidr, 0))
    error_message = "IPV4 CIDR is a must"
  }
  
}

variable "vpc_tags" {
  type = map(string)
  default = {}
    
}

variable "subnet_cidr" {
  type        = string
  default     = "10.20.0.0/24"
  description = "CIDR block for the subnet"
}

variable "subnet_tags" {
  type = map(string)
  default = {}  
}