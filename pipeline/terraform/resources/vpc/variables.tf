variable "region" {
  type = string
}

variable "availability_zones" {
  type = list(any)
}

variable "cidr_block" {
  type        = string
  description = "VPC cidr block. Example: 10.0.0.0/16"
}

variable "tags" {
  type = map(string)
  default = {
    owner       = "norm.nadeau@tcs.com"
    project     = "mam"
    environment = "mam-dev"
  }
}
