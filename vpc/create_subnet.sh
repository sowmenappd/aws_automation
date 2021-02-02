aws ec2 create-subnet --cidr-block $1 --vpc-id $2 --availability-zone $3 --tag-specifications 'ResourceType=subnet,Tags=[{Key=Name,Value=$4}]'
