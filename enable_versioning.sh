#!/bin/sh
aws s3api put-bucket-versioning  --bucket $1  --versioning-configuration Status=$2

aws s3api get-bucket-versioning --bucket $1