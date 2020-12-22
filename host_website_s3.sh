#!/bin/sh
# Clones the github repo
git clone https://github.com/$1/$2.git

# Checkouts the repo's working branch for the website
cd $2 
git checkout $3 
touch error.html
echo "<html><head>404</head><body><h2>NOT FOUND</h2></body></html>" >> error.html && cd ..


# Uploads the repository's content to the bucket specified
aws s3 cp $2 s3://$4/ --recursive

# Set the website configuration for the bucket
aws s3api put-bucket-website --bucket $4 --website-configuration file://$5

# Cleanup repo files
rm -rf $2