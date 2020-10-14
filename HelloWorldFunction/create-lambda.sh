#!/bin/bash
BUCKET_NAME=lambdajavayusufu
echo $BUCKET_NAME

aws lambda create-function \
--function-name lambdajavayusufu \
--handler com.yusufu.App \
--runtime java8 \
--role arn:aws:iam::039296889778:role/lambda-basic-execution-with-s3 \
--code S3Bucket=$BUCKET_NAME,S3Key=HelloWorld-1.0.jar

