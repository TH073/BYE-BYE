locals {
  credentials = var.credentials
}

provider "google" {
  credentials = local.credentials
}

# Only needed to enable managed prometheus
provider "google-beta" {
  credentials = local.credentials
}

terraform {
  backend "gcs" {
    bucket = ""
    credentials = ""
    prefix = ""
  }
}
