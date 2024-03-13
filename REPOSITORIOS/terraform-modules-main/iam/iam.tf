locals {
    group-role = flatten ([
        for group in keys(var.groups): [
            for role in var.groups[group].roles : {
                group = group
                role = role
            }
        ]
    ])
}

resource "google_project_iam_member" "iam_binding" {
  project = var.project
  
  for_each = { for binding in local.group-role : "${binding.group}_${binding.role}" => binding }
  role    = each.value.role
  member = "group:${each.value.group}@nbn23.tech"
}

