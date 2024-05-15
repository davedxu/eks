terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.37.0"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_eks_cluster" "test_cluster_05-15-2024" {
  role_arn = "[YOUR ARN HERE]"
  name= "test_cluster_05-15-2024_new"
  version = "1.27"
  vpc_config {
    subnet_ids = ["subnet-05311621526431f17", "subnet-0756b2b7a82e57097"]
    endpoint_public_access = true
  }
}