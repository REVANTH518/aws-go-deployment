#!/bin/bash
set -e

# Stop the running container (if any)
echo "Hi"

docker pull revanth518/aws-go-deployment

docker container run -d -p 8000:8080 revanth518/aws-go-deployment
