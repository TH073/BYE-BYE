#tf_modules_tag = 1.1.0

project = "nbn23-terraform"

external_service_accounts = {
    # "sa_name@project_id.iam.gserviceaccount.com" = {
    #     roles = [ "roles/role_name" ]
    # }
}

project_service_accounts = {
    "tf-admin" = {
        name = "Terraform Administrator"
        description = "SA with Organization level permissions"

        roles = [
            "roles/artifactregistry.reader",
            "roles/cloudbuild.builds.builder",
            "roles/cloudbuild.builds.editor", 
            "roles/cloudbuild.workerPoolUser",
            "roles/resourcemanager.projectIamAdmin",
            "roles/iam.serviceAccountAdmin",
            "roles/storage.admin"
            ]
    }
    "tf-operator" = {
        name = "Terraform operator"
        description = "SA with Project level permissions"
        roles = [] # permissions granted through project module. 
    }
}

