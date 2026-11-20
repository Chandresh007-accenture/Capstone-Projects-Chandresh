# Project 8 – Build and Run Docker App Locally

**Author:** Chandresh Kumar

## Objective
Practice container deployment by building a Docker image and running a web application locally inside a Docker container.

## Technologies
- Docker
- Nginx
- HTML

## Project Files
- Dockerfile – Defines the Docker image.
- index.html – Web application page.
- screenshots/ – Project execution evidence.

## Build Docker Image
    docker build -t docker-local-app-chandresh:1.0 .

## Run Docker Container
    docker run -d --name docker-local-app-chandresh -p 8080:80 docker-local-app-chandresh:1.0

## Verify Application
Open http://localhost:8080 in your browser.

Or run:
    curl http://localhost:8080

## Stop and Remove Container
    docker stop docker-local-app-chandresh
    docker rm docker-local-app-chandresh

## Result
Successfully built a Docker image and ran the Nginx-based web application locally in a Docker container.
