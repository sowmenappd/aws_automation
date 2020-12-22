# Automation scripts for AWS S3

## Following are some of the scripts that were enlisted as tasks:

> Set versioning status of a bucket (Toggle between enabled and suspended)

> Delete a file from the bucket

> Download a deleted file from the bucket

> Host a static website from the bucket

## Versioning toggle bash script for bucket

---

This script can be called from the shell to enable the user to enable or suspend the versioning control for the bucket specified on the command line.

```sh
$ #!/bin/sh
$ ./enable_versioning.sh automate-tasks [Enabled|Suspended]
```

Upon success, it will return the current status of versioning control for the contextual bucket.

## Delete file bash script

---

This command line script can be called to delete a file from the bucket, both of which are specified as command line arguments.

```sh
$ #!/bin/sh
$ ./delete_file.sh BUCKET_NAME OBJECT_KEY
```

## Retrieve deleted file from S3 bash script

---

This command line script can be called to get a file that was deleted from a version control enabled bucket. Command line arguments include the bucket name, the object key and the version id of the deleted object.

```sh
$ #!/bin/sh
$ ./get_deleted_object.sh BUCKET_NAME OBJECT_KEY VERSION_ID [OUTPUT_FILENAME]
```
