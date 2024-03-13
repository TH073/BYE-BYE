locals {
    sa-role = flatten ([
        for sa in keys(var.project_service_accounts): [
            for role in var.project_service_accounts[sa].roles : {
                sa = sa
                role = role
            }
        ]
    ])
}
resource "google_project_iam_member" "sa_iam_binding" {
  project = var.project
  
  for_each = { for binding in local.sa-role : "${binding.sa}_${binding.role}" => binding }
  role    = each.value.role
  member = "serviceAccount:${each.value.sa}@${var.project}.iam.gserviceaccount.com"
  depends_on = [ google_service_account.service_account ]
}

locals {
    ext-sa-role = flatten ([
        for sa in keys(var.external_service_accounts): [
            for role in var.external_service_accounts[sa].roles : {
                sa = sa
                role = role
            }
        ]
    ])
}

resource "google_project_iam_member" "ext_sa_iam_binding" {
  project = var.project
  
  for_each = { for binding in local.ext-sa-role : "${binding.sa}_${binding.role}" => binding }
  role    = each.value.role
  member = "serviceAccount:${each.value.sa}"
}

