resource "aws_s3_bucket" "mybucket" {
bucket = "jpmc-chaitanya-terraform-bucket"
tags = {
Name = "myfirstbucket"
}
}

resource "local_file"  "welcome" {
   filename = "index.html"
   content = "Welcome to Terraform for JPMC by RPS \n"
   }
   
resource "aws_s3_bucket_object" "myobject" {
bucket = aws_s3_bucket.mybucket.id
key = "myprojectpage"
acl = "private"
source = "index.html"
}