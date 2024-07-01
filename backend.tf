terraform {
  backend "s3" {
    bucket = "name-of-your-bucket-here"
    region = "us-east-1"
    key = "folder-name/terraform.tfstate"
    dynamodb_table = "terraform-lock-table"
  }
}
