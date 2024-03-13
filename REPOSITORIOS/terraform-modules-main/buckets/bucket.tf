
resource "google_storage_bucket" "bucket" {

  project       = var.project
  location      = var.location
  force_destroy = var.force_destroy
  
  for_each = var.buckets

  name          = each.key
  uniform_bucket_level_access = each.value.uniform_bucket_level_access

  versioning {
    enabled = each.value.versioning
  }
  autoclass {
    enabled = each.value.autoclass
  }

  labels  = {
    env       = each.value.labels.env
    owner     = each.value.labels.owner
    component = each.value.labels.component
  }

}