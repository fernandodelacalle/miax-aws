
# Create the repossitorio
aws ecr create-repository --repository-name fastapi-suma --region eu-west-1

# Build the image
docker build -t 467432373215.dkr.ecr.eu-west-1.amazonaws.com/fastapi-suma .

# To test:
# docker run  -p 8080:8080 467432373215.dkr.ecr.eu-west-1.amazonaws.com/fastapi-suma

# Log docker into the aws registry
aws ecr get-login-password | docker login --username AWS --password-stdin 467432373215.dkr.ecr.eu-west-1.amazonaws.com

# Push the image
docker push 467432373215.dkr.ecr.eu-west-1.amazonaws.com/fastapi-suma
