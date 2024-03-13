#tf_modules_tag = 1.1.0
project = "nbn23-competition-manager-stg"

external_service_accounts = {
  "tf-admin@nbn23-terraform.iam.gserviceaccount.com" = {
    roles = [ 
      "roles/resourcemanager.organizationAdmin",
      "roles/resourcemanager.projectIamAdmin",
      "roles/iam.serviceAccountAdmin"
     ]
  }
}

project_service_accounts = {
  continuous-integration = {
      name = "continuous-integration"
      description = "Account to use with our CI Services"
      roles = [
       "roles/cloudbuild.builds.builder", 
       "roles/cloudfunctions.developer", 
       "roles/iam.serviceAccountUser", 
       "roles/run.admin", 
       "roles/storage.admin", 
       "roles/viewer" 
      ]
  }
}
