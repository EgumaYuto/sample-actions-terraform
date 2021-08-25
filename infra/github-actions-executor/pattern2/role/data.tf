data "terraform_remote_state" "execution" {
  backend = "s3"

  config = {
    bucket = var.state_bucket
    key    = "env:/${terraform.workspace}/state/github-actions-executor/pattern2/user.tfstate"
    region = var.default_region
  }
}
