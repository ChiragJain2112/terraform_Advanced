#backend_variable

variable "state_bucket" {
  default = "my-state-terraform-bucket"
}
variable "region" {
  default = "us-east-1"
}
variable "state_bucket_table" {
  default = "my-state-terraform-bucket-table"
}

#backend_Infra

resource "aws_dynamodb_table" "my_state_table" {
  name = var.state_bucket_table
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    Name = var.state_bucket_table    
  }
}

#backend_bucket
 
resource "aws_s3_bucket" "my_state_bucket" {
  bucket = var.state_bucket
  tags = {
    Name = var.state_bucket
  }
}