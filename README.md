We will create this setup and make sure it works.

https://www.terraform.io/docs/providers/aws/guides/serverless-with-aws-lambda-and-api-gateway.html

1. Create a lambda function and zip it.

2. Put zipped lambda to s3 bucket.
$ awslocal s3api create-bucket --bucket=cloud-file-parser --region=ap-southeast-2
$ awslocal s3 cp lambda.zip s3://cloud-file-parser/v1.0.0/lambda.zip

- install awslocal first using pip -
testing s3 commands
awslocal s3api put-object --bucket <bucketname> --body <filename> --key <directory/filename_in_bucket>
awslocal s3api list-objects --bucket <bucketname>
