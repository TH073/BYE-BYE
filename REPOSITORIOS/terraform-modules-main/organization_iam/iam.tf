locals {
    group-bindings = flatten ([
        for group in keys(var.groups): [
            for role in var.groups[group].roles : {
                group = group
                role = role
            }
        ]
    ])
}

resource "google_organization_iam_member" "organization" {
  org_id  = "104238922361"
  
  for_each = { for binding in local.group-bindings : "${binding.group}_${binding.role}" => binding }
  
  role    = each.value.role
  member  = "group:${each.value.group}@nbn23.tech"
}