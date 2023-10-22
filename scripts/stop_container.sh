#!/bin/bash
set -e

# Stop the running container (if any)
echo "Hi"

docker stop $(docker ps -a -q)

docker rm -f $(docker ps -a -q)

docker rmi --force $(docker images -a -q | uniq)

echo "Stopped and Removed"