#!/bin/bash
# Stop and remove existing container
docker stop final-python-app || true
docker rm final-python-app || true