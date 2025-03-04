BUCKET_NAME="my-test-bucket-1740981307"

echo "Deleting S3 bucket: $BUCKET_NAME"
aws s3 rb s3://$BUCKET_NAME --force

echo "Listing all S3 buckets after deletion"
aws s3 ls