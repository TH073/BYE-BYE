#tf_modules_tag = 1.0.1

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
            "group:devops@nbn23.tech"
            ]}
        ]
    }
    "nbn23-tfstate-beta" = {
        uniform_bucket_level_access = true
        versioning = true
        autoclass = true
        labels = {
            component = "terraform"
            env = "beta"
            owner = "devops"
        }
        iam_bindings = [{
            role = "roles/storage.admin"
            members = ["serviceAccount:tf-admin@nbn23-terraform.iam.gserviceaccount.com",
            "group:devops@nbn23.tech"
            ]}
        ]
    }
}