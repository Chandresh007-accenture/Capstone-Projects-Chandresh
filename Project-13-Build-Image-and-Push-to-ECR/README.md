# Project 13: Build Image and Push to ECR

## Project Goal

Build a Docker image for the application and publish it to Amazon Elastic Container Registry (ECR).

## Tasks Completed

1. Built a Docker image using the project Dockerfile.
2. Created an Amazon ECR repository.
3. Authenticated Docker with Amazon ECR.
4. Tagged the Docker image for the ECR repository.
5. Pushed the Docker image to Amazon ECR.
6. Verified that the image was successfully uploaded.

## Technologies Used

- Docker
- AWS CLI
- Amazon Elastic Container Registry (ECR)
- Ubuntu Linux

## AWS Configuration

| Setting | Value |
|---|---|
| AWS Region | ap-south-1 (Mumbai) |
| ECR Repository | project-13-ecr-chandresh |
| Image Tag | 1.0 |
| Image Status | ACTIVE |

## Step 1: Build Docker Image

```bash
docker build --no-cache -t project-13-ecr-chandresh:1.0 .
```

## Step 2: Authenticate with Amazon ECR

```bash
aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 590..........3.dkr.ecr.ap-south-1.amazonaws.com
```

## Step 3: Tag Docker Image

```bash
docker tag project-13-ecr-chandresh:1.0 5905........733.dkr.ecr.ap-south-1.amazonaws.com/project-13-ecr-chandresh:1.0
```

## Step 4: Push Image to ECR

```bash
docker push 59..............733.dkr.ecr.ap-south-1.amazonaws.com/project-13-ecr-chandresh:1.0
```

## Step 5: Verify Image in ECR

```bash
aws ecr describe-images \
  --repository-name project-13-ecr-chandresh \
  --region ap-south-1 \
  --image-ids imageTag=1.0 \
  --output table
```

## Project Deliverables

- Dockerfile
- Application index.html
- README.md
- ECR image verification screenshot in the `screenshot/` folder



## Final Result

Successfully built the Docker image and pushed it to the Amazon ECR repository with image tag `1.0`.

The ECR image verification confirmed that the image status is **ACTIVE**.

# Author
- Chandresh Kumar
