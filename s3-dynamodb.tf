# Create S3 Bucket for storing the statefile
resource "aws_s3_bucket" "nishankkoul-terraform-tfstate-file" {
  bucket = "nishankkoul-terraform-tfstate-file-783"
}

# Create DynamoDB table to implement state locking for the statefile
resource "aws_dynamodb_table" "terraform-state-lock" {
  name = "terraform-lock-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
