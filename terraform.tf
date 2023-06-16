terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "4.66.1"
    }
  }
  required_version = ">=1.2.0"
  backend "s3" {
     bucket = "my-state-terraform-bucket"
     key = "terraform.tfstate"
     region = "us-east-1"
     dynamodb_table = "my-state-terraform-bucket-table"  
     }
}