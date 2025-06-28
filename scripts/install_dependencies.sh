#!/bin/bash
set -e

echo "Starting dependency installation..."

# Update system - use dnf for Amazon Linux 2023
dnf update -y

# Install Docker
dnf install -y docker

# Start and enable Docker
systemctl start docker
systemctl enable docker

# Add ec2-user to docker group
usermod -a -G docker ec2-user

echo "Dependencies installed successfully"