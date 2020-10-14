#!/bin/bash
BUCKET_NAME=lambdajavayusufu
echo $BUCKET_NAME
APP_NAME=lambda-java-app
DEPLOYMENT_GROUP_NAME=lambda-java-group-name
DESCRIPTION="lambda-java-description"
LAMBDA_NAME=lambdajavayusufu
LAMBDA_ALIAS=lambdajavayusufualias


appspec_content="{\"Resources\":[{\"$LAMBDA_NAME\":{\"Properties\":{\"Alias\":\"$LAMBDA_ALIAS\",\"CurrentVersion\":\"1\",\"Name\":\"$LAMBDA_NAME\",\"TargetVersion\":\"1\"},\"Type\":\"AWS::Lambda::Function\"}}],\"version\":\"0.0\"}"

##echo -n $appspec_content | shasum -a 256
echo -n "{\"Resources\":[{\"lambdajavayusufu\":{\"Properties\":{\"Alias\":\"alias\",\"CurrentVersion\":\"1\",\"Name\":\"lambdajavayusufu\",\"TargetVersion\":\"1\"},\"Type\":\"AWS::Lambda::Function\"}}],\"version\":\"0.0\"}" | shasum -a 256
