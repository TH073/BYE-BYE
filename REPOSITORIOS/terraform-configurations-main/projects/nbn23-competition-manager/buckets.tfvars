#tf_modules_tag = 1.0.1

project = "nbn23-competition-manager"

buckets = {
    "inn-app-messaging-bucket" = {
        uniform_bucket_level_access = true
        versioning = false
        autoclass = true
        labels = {
            component = "firebase"
            env = "production"
            owner = "marketing"
        }
        iam_bindings = [{
            role = "roles/storage.objectAdmin"
            members = [
            "group:marketing@nbn23.tech"
            ]}
        ]
    }
}