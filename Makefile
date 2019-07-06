aws/credentials:
	aws configure set region us-west-2
	aws configure set aws_access_key_id $$AWS_ACCESS_KEY_ID
	aws configure set aws_secret_access_key $$AWS_SECRET_ACCESS_KEY

aws/deploy:
	aws s3 rm s3://sample-fastly/index.html
	aws s3 sync index.html s3://fastly-sample/index.html --acl public-read