
resource "aws_s3_bucket" "bucket_test" {
  bucket = "my-tf-test-bucket-miax"
}

resource "aws_s3_bucket" "bucket_test_2" {
  bucket = "my-tf-test-bucket-miax-2"
}
