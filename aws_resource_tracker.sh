#!/bin/bash

###############################
# Author: Sushank Kumar
# Date: 17-05-2023
#
# Version: v1
#
# This script will report the AWS usage.
###############################

# Enables a mode of the shell where all executed commands are printed to the terminal.(debug mode)
set -x

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# List all AWS S3 Buckets
aws s3 ls > output.txt

# List AWS EC2 Instances data
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> output.txt
aws ec2 describe-instances | jq '.Reservations[].Instances[].KeyName' >> output.txt

# List all Lambda functions
aws lambda list-functions >> output.txt

# List all IAM Users
aws iam list-users >> output.txt
