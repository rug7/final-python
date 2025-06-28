#!/bin/bash
# Stop and remove existing container
sudo docker stop final-python-app || true
sudo docker rm final-python-app || true