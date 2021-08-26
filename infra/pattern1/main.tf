terraform {
  backend "s3" {
  }
}

provider "aws" {
  region = var.default_region
}

module "naming" {
  source = "..\/_module\/naming"
  role   = local.role
}

resource "aws_iam_user" "user" {
  name = module.naming.name
  tags = {
    name = module.naming.name
  }
}

resource "aws_iam_user_policy_attachment" "policy" {
  user       = aws_iam_user.user.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}