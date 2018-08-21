bucket_name=mechanchi.com
aws s3api create-bucket --bucket ${bucket_name} --region us-west-2 --create-bucket-configuration LocationConstraint=us-west-2

aws s3api put-bucket-versioning --bucket ${bucket_name} --versioning-configuration Status=Enabled

export KOPS_STATE_STORE=s3://${bucket_name}
