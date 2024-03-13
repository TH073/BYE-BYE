Latest Version buckets module: v1.0.0_sa

This module is able to:
- Create new service accounts for the project
- Assign permissions to SAs from the project
- Assign permissions to SAs from other projects

**If a service account already exists terraform will fail. To solve the issue it must be manually imported**

Example:
```
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
            "roles/cloudbuild.builds.editor", 
            "roles/storage.admin" 
            ]
    }
    "tf-operator" = {
        name = "Terraform operator"
        description = "SA with Project level permissions"
        roles = [ "roles/storage.admin" ]
    }
}

