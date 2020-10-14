aws lambda create-function \
--function-name techsession2lambda \
--handler com.yusufu.App \
--runtime java8 \
--role arn:aws:iam::039296889778:role/lambda-basic-execution-with-s3 \
--zip-file fileb://HelloWorld-1.0.jar