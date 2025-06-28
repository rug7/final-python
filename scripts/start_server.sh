#!/bin/bash
cd /home/ec2-user/final-python

# Stop and remove any existing container first (safety check)
sudo docker stop final-python-app || true
sudo docker rm final-python-app || true

# Remove any old images to free up space
sudo docker image prune -f

# Build the Docker image
sudo docker build -t final-python-app .

# Run the container
sudo docker run -d --name final-python-app -p 5000:5000 final-python-app

echo "Application started successfully"