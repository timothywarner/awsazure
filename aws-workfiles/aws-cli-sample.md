# # AWS CLI Sample Code

## Account sign in

aws configure

## Get help

aws <command> <subcommand> [options and parameters]

aws help
aws <command> help
aws <command> <subcommand> help

## Make an S3 bucket
aws s3 mb s3://<UNIQUE_BUCKET_NAME>

## List buckets
aws s3 ls

## Recursively copy a directory and its subfolders from your workstation to your S3 bucket
aws s3 cp MyFolder s3://bucket-name — recursive [–region us-west-2]

## Delete an S3 bucket and all its contents
aws s3 rb s3://bucket-name –force

## List the sizes of an S3 bucket and its contents
aws s3api list-objects --bucket BUCKETNAME --output json --query "[sum(Contents[].Size), length(Contents[])]"

## List available EC2 regions
aws ec2 describe-regions --output table

## Create an EC2 instance

aws ec2 run-instances --image-id ami-xxxxxxxx --count 1 --instance-type t2.micro --key-name MyKeyPair --security-group-ids sg-903004f8 --subnet-id subnet-6e7f829e

aws ec2 create-tags --resources i-5203422c --tags Key=Name,Value=MyInstance

aws ec2 describe-instances --filters "Name=instance-type,Values=t2.micro" --query "Reservations[].Instances[].InstanceId"

aws ec2 terminate-instances --instance-ids i-5203422c
