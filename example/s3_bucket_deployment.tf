## Terrafom S3 bucket deployment module
module "s3_bucket_deployment" {
    source      = "../"

    name        = "my-test-bucket.some.example.domain.com"
    region      = "eu-west-1"

##  Following data is optional, values below are an example (uncomment and edit them for usage):
#   
#   logging     = { log_bucket_id = "my-logging-bucket.some.example.domain.com"
#                   log_bucket_prefix = "my-test-bucket.some.example.domain.com_logs/"
#                 }
#   life_cycle  = { days = 180
#                 }
#   replication = { replication_role_name = "my-replication-bucket.some.example.domain.com_replication_role"
#                   replication_policy_name = "my-replication-bucket.some.example.domain.com_policy"
#                   replication_bucket_arn = "arn:aws:s3:::my-replication-bucket.some.example.domain.com"
#                 }
#   versioning  = { enabled = "true"
#                 }
#   encryption  = { key_duration = 10
#                 }
#   iamuser     = true
#
#
###  2. pitanje u zadatku?
#   assume_role = { assumerole_arn = "arn:aws:iam::my-role-arn"
#                   assumerole_session_name = "my-session-name"
#                   assumerole_external_id = "my-external-id"   
#                 }

}