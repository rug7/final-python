#!/bin/bash
# Stop and remove existing container if running
docker stop final-python-app || true
docker rm final-python-app || true