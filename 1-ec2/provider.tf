terraform {
  required_provider {
    aws = {
      source = "hashicorp/aws"
      version = "6.70.o"
    }
  }
}

provider "aws"{
  region = "us-east-1" 
}