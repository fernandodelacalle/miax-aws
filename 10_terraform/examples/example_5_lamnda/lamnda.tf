resource "aws_ecr_repository" "api_repository" {
  name = "lamnda"
}

resource "aws_lambda_function" "executable" {
  function_name = "test_terraform"
  image_uri     = "${aws_ecr_repository.api_repository.repository_url}:latest"
  package_type  = "Image"
  role          = aws_iam_role.lambda.arn
}
