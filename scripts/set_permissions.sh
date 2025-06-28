#!/bin/bash
set -e

echo "Setting directory permissions..."

# Now the directory exists, so we can change ownership
chown -R ec2-user:ec2-user /home/ec2-user/final-python

echo "Permissions set successfully"