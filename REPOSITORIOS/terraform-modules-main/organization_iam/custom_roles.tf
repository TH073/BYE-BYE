resource "google_organization_iam_custom_role" "custom_role" {
  org_id      = "104238922361"

  for_each = var.custom_roles

  role_id     = each.key
  title       = each.value.title
  description = each.value.description
  permissions = each.value.permissions

}