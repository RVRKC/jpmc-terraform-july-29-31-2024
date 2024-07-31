data "aws_s3_bucket" "existing_bucket" {
  bucket = "jpmc-chaitanya-bucket"    # change the bucket name 
}



output "bucket_details" {
  value = {
    id     = data.aws_s3_bucket.existing_bucket.id
    arn    = data.aws_s3_bucket.existing_bucket.arn
    region = data.aws_s3_bucket.existing_bucket.region
    name   = data.aws_s3_bucket.existing_bucket.bucket_domain_name
  }
}