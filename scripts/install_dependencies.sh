#!/bin/bash
yum update -y
yum install -y docker
service docker start
usermod -a -G docker ec2-user
# Change ownership of the application directory
chown -R ec2-user:ec2-user /home/ec2-user/final-python