terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = var.region
}

resource "aws_instance" "ansible-control-server" {
  ami           = var.control_ami
  instance_type = var.instance_type
  tags = {
    Name = "ansible-control"
  }
  key_name = var.key_name
}

resource "aws_instance" "ansible-web-servers" {
  count         = length(var.web_servers)
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name = element(var.web_servers, count.index)
  }
  key_name = var.key_name
}