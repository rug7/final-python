#!/bin/bash
# Pull latest image and run container
docker pull majdabdo12/final-python:latest
docker run -d --name final-python-app -p 5000:5000 majdabdo12/final-python:latest