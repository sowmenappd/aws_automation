aws ec2 describe-vpcs --filters 'Name=tag:Name,Values=['$1']' | grep -m 1 'State' 