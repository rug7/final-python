#!/bin/bash
set -e

echo "Starting dependency installation..."

# Update system - use YUM for Amazon Linux 2
yum update -y

# Install Docker
yum install -y docker

# Start and enable Docker
systemctl start docker
systemctl enable docker

# Add ec2-user to docker group
usermod -a -G docker ec2-user

echo "Dependencies installed successfully"