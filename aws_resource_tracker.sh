#!/bin/bash

###############################
# Author: Sushank Kumar
# Date: 17-05-2023
#
# Version: v1
#
# This script will report the AWS usage.
###############################

set -x

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# List all AWS S3 Buckets
aws s3 ls

# List all AWS EC2 Instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# List all Lambda functions
aws lambda list-functions

# List all IAM Users
aws iam list-users
