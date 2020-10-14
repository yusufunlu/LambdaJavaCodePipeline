#!/bin/bash
BUCKET_NAME=lambdajavayusufu
echo $BUCKET_NAME
APP_NAME=lambda-java-app
DEPLOYMENT_GROUP_NAME=lambda-java-group-name
DESCRIPTION="lambda-java-description"
LAMBDA_NAME=lambdajavayusufu
LAMBDA_ALIAS=alias


appspec_content="{\"Resources\":[{\"$LAMBDA_NAME\":{\"Properties\":{\"Alias\":\"$LAMBDA_ALIAS\",\"CurrentVersion\":\"1\",\"Name\":\"$LAMBDA_NAME\",\"TargetVersion\":\"1\"},\"Type\":\"AWS::Lambda::Function\"}}],\"version\":\"0.0\"}"
echo $appspec_content

aws deploy create-deployment \
    --application-name lambda-java-app \
    --deployment-config-name CodeDeployDefault.LambdaAllAtOnce \
    --deployment-group-name lambda-java-group-name \
    --description "lambda-java-description" \
    --revision '{"revisionType": "AppSpecContent", "appSpecContent": {"content": "{\"Resources\":[{\"lambdajavayusufu\":{\"Properties\":{\"Alias\":\"alias\",\"CurrentVersion\":\"1\",\"Name\":\"lambdajavayusufu\",\"TargetVersion\":\"1\"},\"Type\":\"AWS::Lambda::Function\"}}],\"version\":\"0.0\"}", "sha256": "edda580ccaa5a80810de465c1abdc0a3d07fa3d77188982b16c2cf6f21215e3e"}}' \
    --output text \
    --query '[deploymentId]'

