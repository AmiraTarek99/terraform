variable "cidr" {
  type = string
  #   default     = "10.5.0.0/16"
  description = "this is cidr block for vpc"
}


variable "instance-type" {
  type = string
}

variable "sub-pub-cidr" {
  type = list
}

variable "azs56" {
  type = list
}

variable "sub-priv-cidr" {
  type = list
}


variable "region" {
  type = string
}

