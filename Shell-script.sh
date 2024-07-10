#!/bin/bash
#

# Author : Jitendra Pal
# Date: 10 july
#
#
# Version: v1
#
# this script will report the aws resource usage
#

# AWS s3
# AWS EC2
# AWS Lambda
# AWS IAM User
#
set -x
# list S3 bucket
echo "Print the all s3 buckets
aws s3 ls > resourceTracker

# list EC2 Instance
echo "Print the all ec2 instances
aws ec2 describe-instances > resourceTracker

# list lambda
echo "Print aws lambda function"
aws lambda list-functions > resourceTracker

# list IAM User
echo " Print IAM users"

aws iam list-users > resourceTracker
