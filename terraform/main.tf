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
    region = "us-east-1"
    profile = "TF_Leandro"
}

resource "aws_instance" "Teste_EC2" {
  ami = "ami-0261755bbcb8c4a84"
  instance_type = "t2.small"
  key_name = "EC2_T2-Small"
  tags = {
    Name = "Ec2 Teste t2 Micro"
    Env = "dev"
  }
}