locals {
    remote_bucket = var.project == "nbn23-terraform" || var.project == "nbn23-kms" || var.project == "nbn23-competition-manager" || var.project == "fiba-app-pro" || var.project == "nbn23-cdp" ? "nbn23-tfstate-admin" : "nbn23-tfstate-beta"
}

data "terraform_remote_state" "service_accounts" {
  backend = "gcs"
  workspace = "sa"
######################################## REV
  config = {
    credentials = "credentials/credentials.json"
    bucket         = local.remote_bucket
    prefix         = "${var.project}"
  }
}

data "terraform_remote_state" "pubsub" {
  backend = "gcs"
  workspace = "pubsub"
######################################## REV
  config = {
    credentials = "credentials/credentials.json"
    bucket         = local.remote_bucket
    prefix         = "${var.project}"
  }
}

