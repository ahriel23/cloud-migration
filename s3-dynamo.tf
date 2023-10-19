

# Create an S3 bucket
resource "aws_s3_bucket" "example" {
  bucket = "cloud-migr-455076341644"
}
resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.example.id
  versioning_configuration {
    status = "Enabled"
  }
}

# Create a DynamoDB table
resource "aws_dynamodb_table" "table" {
  name           = "my-db" 
#  hash_key       = "LockID"
  billing_mode = "PAY_PER_REQUEST"              
#  attribute {
#    name = "LockID"
#    type = "S" 
  }
}
  
