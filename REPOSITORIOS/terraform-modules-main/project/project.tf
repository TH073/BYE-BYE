
resource "google_project" "project" {
  name       = var.name
  project_id = var.id
  org_id     = var.organization_id
}

