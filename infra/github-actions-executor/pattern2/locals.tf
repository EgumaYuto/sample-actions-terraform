locals {
  role       = "sample-actions-user-2"
  account_id = data.aws_caller_identity.identity.account_id
}