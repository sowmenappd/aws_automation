aws ec2 describe-vpcs --filters 'Name=cidr,Values=['$1']' | grep -m 1 'State' 