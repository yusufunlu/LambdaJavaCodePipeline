#!/bin/bash
BUCKET_NAME=lambdajavayusufu
echo $BUCKET_NAME
echo $BUCKET_NAME > bucket-name.txt
aws s3 mb s3://$BUCKET_NAME