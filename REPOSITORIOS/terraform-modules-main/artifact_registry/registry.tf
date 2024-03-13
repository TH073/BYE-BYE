resource "google_artifact_registry_repository" "repository" {
  location      = var.location
  project       = var.project 

  for_each = var.repositories

  repository_id = each.key
  description   = each.value.description
  format        = each.value.format
}