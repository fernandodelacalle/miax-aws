

# data "archive_file" "lambda_hello_world" {
#   type = "zip"

#   source_dir  = "${path.module}/hello-world"
#   output_path = "${path.module}/hello-world.zip"
# }

# resource "aws_s3_object" "lambda_hello_world" {
#   bucket = aws_s3_bucket.lambda_bucket.id

#   key    = "hello-world.zip"
#   source = data.archive_file.lambda_hello_world.output_path

#   etag = filemd5(data.archive_file.lambda_hello_world.output_path)
# }