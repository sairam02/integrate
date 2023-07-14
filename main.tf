terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "ap-south-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0756206b8321c60d1"
  instance_type = "t3.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
