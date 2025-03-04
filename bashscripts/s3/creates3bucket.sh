#!/bin/bash

# Define bucket name (Change the name)
BUCKET_NAME="my-test-bucket-$(date +%s)"

echo "Creating S3 bucket: $BUCKET_NAME"
aws s3 mb s3://$BUCKET_NAME
