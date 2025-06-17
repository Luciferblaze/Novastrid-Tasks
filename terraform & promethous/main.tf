terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.80.0"
    }
  }
  backend "s3" {
    bucket = "name of bucket for storing state files"
    key = "terraform.tfstate"
    region = "ap-south-1"
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "virtual_machine" {
  ami = var.instance_ami
  instance_type = var.instance_type
  tags = {
    Name = "web"
  }
}
