#tf_modules_tag = 1.0.1
project = "nbn23-competition-manager-dev"

groups = {
    "backend" = {
     roles = [ 
        "roles/appengine.appViewer",
        "roles/datastore.user",
        "roles/cloudfunctions.developer",
        "roles/redis.admin",
        "roles/cloudscheduler.admin",
        "roles/cloudtasks.queueAdmin",
        "roles/errorreporting.user",
        "roles/errorreporting.writer",
        "organizations/104238922361/roles/GCSViewerAndObjectUser",
        "roles/logging.viewer",
        "roles/monitoring.editor",
        "roles/pubsub.editor",
        "roles/secretmanager.admin",
        "roles/iam.serviceAccountTokenCreator"
      ]
     }
    "firebase" = {
     roles = [ 
        "roles/firebasedynamiclinks.admin"
      ]
     }
    "frontend" = {
     roles = [ 
        "roles/appengine.appViewer",
        "roles/automl.editor",
        "roles/datastore.user",
        "roles/cloudfunctions.developer",
        "roles/firebasestorage.admin",
        "roles/errorreporting.viewer",
        "roles/firebaseappcheck.admin",
        "roles/firebaseauth.admin",
        "roles/firebasenotifications.admin",
        "roles/firebasecloudmessaging.admin",
        "roles/firebasedynamiclinks.admin",
        "roles/firebasehosting.admin",
        "roles/firebaseinappmessaging.admin",
        "roles/firebaseml.admin",
        "roles/firebase.qualityAdmin",
        "roles/firebasedatabase.admin",
        "roles/firebaserules.admin",
        "roles/logging.viewer",
        "roles/storage.objectAdmin"
      ]
     }
    "qa" = {
     roles = [ 
        "roles/viewer"
      ]
     }
    "management" = {
     roles = [ 
        "roles/datastore.indexAdmin"
      ]
     }
    "marketing" = {
     roles = [ 
        "organizations/104238922361/roles/FirebaseMarketingManager",
        "roles/firebase.viewer"
      ]
     }
    "support" = {
     roles = [ 
        "roles/storage.objectUser",
        "roles/editor"
      ]
     }
    "verse" = {
     roles = [ 
        "roles/firebase.developAdmin",
        "roles/oauthconfig.editor",
        "roles/viewer"
      ]
     }
     "minidevops" = {
      roles = [ 
        "roles/viewer"
      ]
     }
}