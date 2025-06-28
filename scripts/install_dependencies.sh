#!/bin/bash
set -e

echo "Starting dependency installation..."

# Update system
yum update -y

# Install Docker
yum install -y docker

# Start and enable Docker
systemctl start docker
systemctl enable docker

# Add ec2-user to docker group
usermod -a -G docker ec2-user

# Change ownership
chown -R ec2-user:ec2-user /home/ec2-user/final-python

echo "Dependencies installed successfully"