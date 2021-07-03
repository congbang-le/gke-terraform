# Root configuration. This file will define the S3 backend config for all 3 environments. Other possible config may include: variables, providers,... 
# Reference link: https://terragrunt.gruntwork.io/docs/features/keep-your-remote-state-configuration-dry/#using-the-generate-property-to-generate-terraform-code-for-managing-remote-state
# Will create the S3 and DynamoDB automatically if not exists
remote_state {
  backend = "gcs"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    bucket   = "banglc-tf-state"
    prefix   = "${path_relative_to_include()}/terraform.tfstate"
    project  = "halogen-antenna-298109"
    location = "ASIA-SOUTHEAST1"
  }
}