provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "s3lab" {
  bucket = "s3lab-test-ccube123"
  acl = "public-read"
  region = "us-east-1"

}

resource "aws_s3_bucket_object" "uploadfile" {
    bucket = "${aws_s3_bucket.s3lab.id}"
    source = "test.txt"
    key = "tf"
    //content = "application/json"
}

