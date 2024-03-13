resource "google_service_account" "service_account" {
  project = var.project
  
  for_each = var.project_service_accounts
  account_id   = each.key
  display_name = each.value.name
  description = each.value.description
  
}