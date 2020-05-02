# Terraform module for S3 bucket deployment

Terraform module for deploying S3 buckets with the following options as switches (enable/disable):
- logging
- object lifecycle
- object replication
- versioning 
- encryption
- option to create a dedicated IAM user with IAM policy for full r/w access on the created bucket(s)


## Terraform S3 bucket deployment module

Example of module usage is in examples/s3_bucket_deployment.tf file

**cd** into **./examples** directory and use the following command to use the module:

* terraform init
* terraform plan
* terraform apply


### Module variables

For all supported variables check inside of **examples/s3_bucket_deployment.tf** file

Only **name** and **region** variables are required, everything else is optional and can be removed or modified.
