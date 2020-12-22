#!/bin/sh
aws s3api get-object --bucket $1 --key $2 --version-id $3 $4