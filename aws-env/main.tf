resource "aws_s3_bucket" "mybucket" {
bucket = "jpmc-chaitanya-terraform-bucket"
tags = {
Name = "myfirstbucket"
}
}

resource "aws_s3_bucket_object" "myobject" {
bucket = aws_s3_bucket.mybucket.id
key = "myprojectpage"
acl = "private"
source = "index.html"
etag = filemd5 ("index.html")
}