variable "region" {
    description = "Used to specify AWS region"
    type = string
    default = null
}

variable "name" {
    description = "Used to name the bucket, this value is required"
    type = string
    default = null
}

variable "logging" {
    description = "Used to enable/disable logging on created bucket, bucket parameters must be defined"
    type = map(string)
    default = {}
}

variable "life_cycle" {
    description = "Used to enable/disable lifecycling on created bucket"
    type = map(string)
    default = {}
}

variable "replication" {
    description = "Used to enable/disable replication on created bucket, replication policy must be defined"
    type = map(string)
    default = {}
}

variable "versioning" {
    description = "Used to enable/disable versioning on created bucket"
    type = map(string)
    default = {}
}

variable "encryption" {
    description = "Used to enable/disable encryption on created bucket."
    type = map(string)
    default = {}
}

variable "iamuser" {
    description = "Used to create an IAM user with full R/W permissions on created bucket"
    type = bool
    default = false
}

###  2. pitanje u zadatku?
# variable "assume_role" {
#     description = "Used to run module under different AWS role/policy"
#     type = map(string)
#     default = {
#         assumerole_arn = ""
#         assumerole_session_name = ""
#         assumerole_external_id = ""
# }