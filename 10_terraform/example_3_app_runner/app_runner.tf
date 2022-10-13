resource "aws_ecr_repository" "api_repository" {
  name = "miapi2"
}

resource "aws_iam_role" "myroles" {
  name = "myroles"
  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Principal" : {
          "Service" : "build.apprunner.amazonaws.com"
        },
        "Action" : "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "myrolespolicy" {
  role       = aws_iam_role.myroles.id
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSAppRunnerServicePolicyForECRAccess"
}

resource "aws_apprunner_service" "example" {
  service_name = "example"
  source_configuration {
    authentication_configuration {
      access_role_arn = aws_iam_role.myroles.arn
    }
    image_repository {
      image_configuration {
        port = "8080"
      }
      image_identifier      = "${aws_ecr_repository.api_repository.repository_url}:latest"
      image_repository_type = "ECR"
    }
    auto_deployments_enabled = false
  }
  tags = {
    Name = "example-apprunner-service"
  }
}
