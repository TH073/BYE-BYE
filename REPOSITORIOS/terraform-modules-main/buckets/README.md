Latest Version buckets module: v1.0.1_buckets

Allows creating new buckets and assign permissions to users, groups and service accounts (uniform bucket access level). 

Example: 
```
project = "nbn23-terraform"

buckets = {
    "nbn23-tfstate-admin" = {
        uniform_bucket_level_access = true
        versioning = true
        autoclass = true
        labels = {
            component = "terraform"
            env = "production"
            owner = "devops"
        }
        iam_bindings = [{
            role = "roles/storage.admin"
            members = ["serviceAccount:tf-admin@nbn23-terraform.iam.gserviceaccount.com",
            "user:cristina.sanchez@nothingbutnet.tech",
            "user:fernando.garcia@nothingbutnet.tech"
            ]}
        ]
    }
}