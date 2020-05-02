# Terraform module for S3 bucket deployment

Terraform module for deploying S3 buckets with the following options as switches (enable/disable):
- logging
- object lifecycle
- object replication
- versioning 
- encryption
- option to create a dedicated IAM user with IAM policy for full r/w access on the created bucket(s)


## Terrafom S3 bucket deployment module

Example of module usage is in examples/s3_bucket_deployment.tf file

**cd** into **./examples** directory and use the following command to use the module:

* terraform init
* terraform plan
* terraform apply


### Module variables
Variables accepted by this module are:

**source**      = "../"

**name**        = "my-test-bucket.some.example.domain.com"
region      = "eu-west-1"
   
logging     = { log_bucket_id = "my-logging-bucket.some.example.domain.com"
                log_bucket_prefix = "my-test-bucket.some.example.domain.com_logs/"
              }
life_cycle  = { days = 180
              }
replication = { replication_role_name = "my-replication-bucket.some.example.domain.com_replication_role"
                replication_policy_name = "my-replication-bucket.some.example.domain.com_policy"
                replication_bucket_arn = "arn:aws:s3:::my-replication-bucket.some.example.domain.com"
              }
versioning  = { enabled = "true"
              }
encryption  = { key_duration = 10
              }
iamuser     = true
assume_role = { assumerole_arn = "arn:aws:iam::my-role-arn"
                assumerole_session_name = "my-session-name"
                assumerole_external_id = "my-external-id"   
              }

Only **name** and **region** variableas are required, everything else is optional and can be removed or modified.
