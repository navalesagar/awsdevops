#!/bin/bash

# Set variables
AMI_ID="ami-05b10e08d247fb927"  # Replace with your AMI ID
INSTANCE_TYPE="t2.micro"
KEY_NAME="sagar-web-01"
SECURITY_GROUP="sg-0efd5876c44f64c95"  # Replace with your security group ID
SUBNET_ID="subnet-xxxxxxxx"  # Replace with your subnet ID

# Create EC2 instance
INSTANCE_ID=$(aws ec2 run-instances \
  --image-id $AMI_ID \
  --instance-type $INSTANCE_TYPE \
  --key-name $KEY_NAME \
  --security-group-ids $SECURITY_GROUP \
  --query "Instances[0].InstanceId" --output text)

echo "Instance Created: $INSTANCE_ID"
