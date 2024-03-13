data "google_iam_policy" "admin" {
    for_each = var.buckets

  dynamic binding {
        for_each = each.value.iam_bindings

        content {
            role = binding.value.role
            members = binding.value.members
        }
  }
}

resource "google_storage_bucket_iam_policy" "policy" {

  for_each = var.buckets

  bucket = google_storage_bucket.bucket[each.key].name
  policy_data = data.google_iam_policy.admin[each.key].policy_data
}