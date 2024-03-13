resource "google_project_iam_member" "terraform" {
  
  count = length(var.tf_operator_roles)
  
  project = var.id
  role    = var.tf_operator_roles[count.index]
  member = "serviceAccount:tf-operator@nbn23-terraform.iam.gserviceaccount.com"
  
}