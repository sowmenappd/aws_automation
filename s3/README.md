# Automation scripts for AWS S3

## Following are some of the scripts that were enlisted as tasks:

> Set versioning status of a bucket

> Delete a file from the bucket

> Download a deleted file from the bucket

> Automate S3 static website hosting from github repo

---

## Versioning toggle bash script for bucket

This script can be called from the shell to enable the user to enable or suspend the versioning control for the bucket specified on the command line.

```sh
$ #!/bin/sh
$ ./enable_versioning.sh automate-tasks [Enabled|Suspended]
```

Upon success, it will return the current status of versioning control for the contextual bucket.

---

## Delete file bash script

This command line script can be called to delete a file from the bucket, both of which are specified as command line arguments.

```sh
$ #!/bin/sh
$ ./delete_file.sh BUCKET_NAME OBJECT_KEY
```

---

## Retrieve deleted file from S3 bash script

This command line script can be called to get a file that was deleted from a version control enabled bucket. Command line arguments include the bucket name, the object key and the version id of the deleted object.

```sh
$ #!/bin/sh
$ ./get_deleted_object.sh BUCKET_NAME OBJECT_KEY VERSION_ID [OUTPUT_FILENAME]
```

---

## Host github repo as S3 website

This command line script downloads the contents of a github repo and uploads it to an S3 bucket for hosting as a static website

The command-line parameters that need to be supplied are: - Username of the github user - The public repo that will be used - The branch that contains the content required for hosting - The name of the S3 bucket where the contents will be uploaded - The config file that will be used by AWS S3 for setting up static website hosting

```sh
$ #!/bin/sh
$ ./host_website_s3.sh GITHUB_USERNAME PUBLIC_GITHUB_REPO REPO_BRANCH BUCKET_NAME WEBSITE_CONFIG_JSON
```
