variable "aws_region" {
  type = string
  default = "ap-south-1"
}

variable "instance_ami" {
  type = string
  default = "ami-123456789"
}

variable "instance_type" {
  type = string
  default = "t4.large"
}