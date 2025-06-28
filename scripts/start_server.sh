#!/bin/bash
cd /home/ec2-user/final-python
# Build the Docker image from the current directory
docker build -t final-python-app .
# Run the container
docker run -d --name final-python-app -p 5000:5000 final-python-app