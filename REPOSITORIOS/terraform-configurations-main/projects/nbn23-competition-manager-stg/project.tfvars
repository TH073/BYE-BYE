#tf_modules_tag = 1.0.0

name = "nbn23-competition-manager-stg"
id = "nbn23-competition-manager-stg"
organization_id = "104238922361"
tf_operator_roles = [
    "roles/iam.serviceAccountAdmin",
    "roles/cloudbuild.workerPoolOwner",
    "roles/resourcemanager.projectIamAdmin",
    "roles/storage.admin",
    "roles/pubsub.admin",
    "roles/cloudtasks.queueAdmin",
    "roles/appengine.appViewer",
    "roles/cloudscheduler.admin"
]