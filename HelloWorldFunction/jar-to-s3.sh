#!/bin/bash
BUCKET_NAME=lambdajavayusufu
echo $BUCKET_NAME
aws s3 mv HelloWorld-1.0.jar s3://$BUCKET_NAME/HelloWorld-1.0.jar