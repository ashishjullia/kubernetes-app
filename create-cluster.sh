export KOPS_CLUSTER_NAME=testing.mechanchi.com

kops create cluster \
--master-size=t2.micro \
--master-volume-size 10 \
--master-count=1 \
--node-size=t2.micro \
--node-volume-size 10 \
--node-count=2 \
--zones=us-west-2c \
--name=${KOPS_CLUSTER_NAME} \
--state s3://mechanchi.com \
--yes

export AWS_ACCESS_KEY=AKIAJV5EQEOFTNBZROAA
export AWS_SECRET_KEY=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
