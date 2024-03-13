#tf_modules_tag = 1.1.0
project = "nbn23-competition-manager"

external_service_accounts = {
    "continuous-integration@nbn23-competition-manager-dev.iam.gserviceaccount.com" = {
    roles = [
      "roles/artifactregistry.writer"
    ]
  }
}

project_service_accounts = {
  gcf-generate-audio-chronicle = {
      name = "gcf-generate-audio-chronicle"
      description = "generate-audio-chronicle function"
      roles = [
      "projects/nbn23-competition-manager/roles/CustomRole775", "roles/logging.logWriter", "roles/secretmanager.secretAccessor", "roles/storage.objectViewer" 
      ]
  }
  gcf-handle-broadage-lmatch = {
      name = "gcf-handle-broadage-lmatch"
      description = ""
      roles = [ 
        "roles/logging.logWriter", 
        "roles/cloudtrace.agent"
      ]
  }
  gcf-refresh-broadage-lmatches = {
      name = "gcf-refresh-broadage-lmatches"
      description = ""
      roles = [ 
        "roles/logging.logWriter", 
        "roles/cloudtrace.agent"
      ]
  }
  gcf-notify-intg = {
      name = "notifyIntg GC Function"
      description = ""
      roles = [
      "roles/cloudtasks.enqueuer", "roles/datastore.user", "roles/logging.admin", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor", "roles/storage.objectAdmin" 
      ]
  }
  gcf-delete-reviewed-matches = {
      name = "delete-reviewed-matches GC Function"
      description = ""
      roles = [
      "projects/nbn23-competition-manager/roles/CustomRole775", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  scoresheet-8-periods = {
      name = "scoresheet-8-periods"
      description = ""
      roles = [
       
      ]
  }
  app-backend = {
      name = "app-backend GC Run service"
      description = "Service account used for GC Run app-backend service"
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-update-group-lineup-stats = {
      name = "gcf-update-group-lineup-stats"
      description = "update-group-lineup-stats function service account"
      roles = [
      "projects/nbn23-competition-manager/roles/CustomRole775", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-manager-sync = {
      name = "manager-sync GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-basketplan-service = {
      name = "basketplan-service GC Run service"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-broadage-service = {
      name = "gcr-broadage-service"
      description = "gcr-broadage-service"
      roles = [
        "roles/cloudtrace.agent",
        "roles/logging.logWriter"
      ]
  }
  fastlaneswish = {
      name = "FastlaneSwish"
      description = ""
      roles = [
       
      ]
  }
  gcr-ibba-service = {
      name = "ibba-service GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-core-authentication = {
      name = "gcr-core-authentication"
      description = ""
      roles = [
      ]
  }
  gcr-api-core = {
      name = "api-core GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-update-group-team-stats = {
      name = "gcf-update-group-team-stats"
      description = "gcf-update-group-team-stats Google Cloud Function"
      roles = [
      "projects/nbn23-competition-manager/roles/CustomRole775", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  firebase-adminsdk-6bhgz = {
      name = "firebase-adminsdk"
      description = "Firebase Admin SDK Service Agent"
      roles = [
      "roles/cloudfunctions.admin", "roles/firebase.sdkAdminServiceAgent", "roles/firebaseappcheck.admin", "roles/iam.serviceAccountTokenCreator", "roles/storage.admin" 
      ]
  }
  gcr-courts = {
      name = "gcr-courts"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-nlp = {
      name = "gcr-nlp"
      description = "Service account for NLP (Natural Language Processor) service"
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter" 
      ]
  }
  gcf-store-dead-letter = {
      name = "gcf-store-dead-letter"
      description = "Service account for store-dead-letter GC Function"
      roles = [
      "roles/logging.logWriter" 
      ]
  }
  gcr-search-sync = {
      name = "gcr-search-sync"
      description = "gcr-search-sync Google Cloud Run service"
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  swish-verse = {
      name = "swish-verse"
      description = "Swish Verse"
      roles = [
       
      ]
  }
  update-match-actor-stats = {
      name = "update-match-actor-stats"
      description = ""
      roles = [
      "projects/nbn23-competition-manager/roles/CustomRole775", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor"
      ]
  }
  data-reader = {
      name = "data-reader"
      description = "SA to Read From BigQuery and/or other data source"
      roles = [
      "roles/bigquery.dataViewer", "roles/bigquery.jobUser" 
      ]
  }
  gcr-player-sync = {
      name = "player-sync GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-sync-competitions-indalweb = {
      name = "syncCompetitionsIndalweb GC Function"
      description = ""
      roles = [
       
      ]
  }
  data-ai = {
      name = "Data.ai"
      description = "Data.ai"
      roles = [
       
      ]
  }
  gcf-check-subscription = {
      name = "checkSubscription GC Function"
      description = ""
      roles = [
      "roles/cloudtasks.enqueuer", "roles/datastore.user", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor", "roles/storage.objectAdmin" 
      ]
  }
  gcr-app-backend = {
      name = "app-backend GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-check-roundless-matches = {
      name = "gcf-check-roundless-matches"
      description = ""
      roles = [
      "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-update-match-actor-stats = {
      name = "gcf-update-match-actor-stats"
      description = ""
      roles = [
      "projects/nbn23-competition-manager/roles/CustomRole775", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-update-comp-team-stats = {
      name = "gcf-update-comp-team-stats"
      description = "update-competition-team-stats Google Cloud Function"
      roles = [
      "projects/nbn23-competition-manager/roles/CustomRole775", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-home = {
      name = "home GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-html-converter = {
      name = "html-converter GC Run service"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter" 
      ]
  }
  gcf-export-user-metrics = {
      name = "exportUserMetrics GC Function"
      description = ""
      roles = [
      "roles/cloudtasks.enqueuer", "roles/datastore.user", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor", "roles/storage.objectAdmin" 
      ]
  }
  gcf-update-match-status = {
      name = "gcf-update-match-status"
      description = ""
      roles = [
      "projects/nbn23-competition-manager/roles/CustomRole775", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-sync-competitions-leverade = {
      name = "syncCompetitionsLeverade GC Function"
      description = ""
      roles = [
       
      ]
  }
  gcf-notify-calendar-changes = {
      name = "notify-calendar-changes GC Function"
      description = ""
      roles = [
      "organizations/104238922361/roles/CustomFirebaseMessagingCreator", "projects/nbn23-competition-manager/roles/CustomRole775", "roles/logging.logWriter" 
      ]
  }
  gcr-team-sync = {
      name = "team-sync GC Run service"
      description = ""
      roles = [
      "projects/nbn23-competition-manager/roles/CustomRole775", "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  functions-match-chronicles = {
      name = "functions-match-chronicles"
      description = ""
      roles = [
      "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-sync-competitions-ow = {
      name = "syncCompetitionsOw GC Function"
      description = ""
      roles = [
       
      ]
  }
  gcr-leris-service = {
      name = "leris-service GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-app-store-subscription = {
      name = "appStoreSubscription GC Function"
      description = ""
      roles = [
      "roles/cloudtasks.enqueuer", "roles/datastore.user", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor", "roles/storage.objectAdmin" 
      ]
  }
  gcf-notify-court-updates = {
      name = "gcf-notify-court-updates"
      description = "notify-court-updates function"
      roles = [
      "projects/nbn23-competition-manager/roles/CustomRole775", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-leverade-service = {
      name = "leverade-service GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-pixellot-service = {
      name = "pixellot-service GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  fiba-eurostep = {
      name = "fiba-eurostep"
      description = "Service account to deploy the FIBA Eurostep app"
      roles = [
       
      ]
  }
  gcf-notify-match-startup = {
      name = "gcf-notify-match-startup "
      description = "notify-match-startup function service account"
      roles = [
      "projects/nbn23-competition-manager/roles/CustomRole775", "roles/datastore.viewer", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-teams = {
      name = "teams GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-remove-cache = {
      name = "remove-cache GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  google-play-hooks = {
      name = "Google Play Hooks"
      description = ""
      roles = [
      "roles/iam.serviceAccountUser", "roles/owner" 
      ]
  }
  gcr-providers = {
      name = "providers GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-leverade-match-result = {
      name = "leveradeMatchResult GC Function"
      description = ""
      roles = [
       
      ]
  }
  gcr-indalweb-service = {
      name = "indalweb-service GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-match-notify-worker = {
      name = "match-notify-worker GC Run service"
      description = ""
      roles = [
      "projects/nbn23-competition-manager/roles/CustomRole775", "roles/editor", "roles/logging.logWriter" 
      ]
  }
  gcr-dbb-service = {
      name = "dbb-service GC Run service"
      description = ""
      roles = [
      "projects/nbn23-competition-manager/roles/CustomStorageObjectCreator", "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-match-resync-worker = {
      name = "match-resync-worker GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-fhoster-service = {
      name = "fhoster-service GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-update-competition-stats = {
      name = "gcf-update-competition-stats"
      description = ""
      roles = [
      "projects/nbn23-competition-manager/roles/CustomRole775", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-ingame-scoresheets = {
      name = "ingame-scoresheets GC Run service"
      description = ""
      roles = [
      "projects/nbn23-competition-manager/roles/CustomStorageObjectCreator", "roles/cloudtrace.agent", "roles/datastore.viewer", "roles/logging.logWriter", "roles/secretmanager.secretAccessor", "roles/storage.objectAdmin" 
      ]
  }
  gcf-store-audio-chronicle = {
      name = "gcf-store-audio-chronicle"
      description = "store-audio-chronicle function"
      roles = [
      "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  continuous-integration = {
      name = "continuous-integration"
      description = "Service account to be used by Github Actions to deploy services"
      roles = [
      "roles/artifactregistry.writer", "roles/cloudbuild.builds.builder", "roles/cloudfunctions.developer", "roles/iam.serviceAccountUser", "roles/iam.workloadIdentityUser", "roles/run.admin", "roles/storage.admin", "roles/viewer" 
      ]
  }
  cron-sync-queue-manager = {
      name = "cron-sync-queue-manager "
      description = "Cloud Scheduler tasks invoking the GCR service sync-queue-manager "
      roles = [
      "roles/run.invoker" 
      ]
  }
  gcr-scorekeepers-external = {
      name = "gcr-scorekeepers-external"
      description = ""
      roles = [
       
      ]
  }
  firebase-adminsdk-miloo = {
      name = "firebase-adminsdk"
      description = ""
      roles = [
      "roles/editor" 
      ]
  }
  gcf-update-courts = {
      name = null
      description = ""
      roles = [
      "projects/nbn23-competition-manager/roles/CustomRole775", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-update-match-stats = {
      name = "gcf-update-match-stats"
      description = ""
      roles = [
      "projects/nbn23-competition-manager/roles/CustomRole775", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-update-upl-season-stats = {
      name = "gcf-update-upl-season-stats"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter" 
      ]
  }
  development = {
      name = "Development"
      description = ""
      roles = [
      "roles/cloudfunctions.developer", "roles/datastore.user", "roles/editor", "roles/iam.serviceAccountUser" 
      ]
  }
  gcf-notify-closed-matches = {
      name = "gcf-notify-closed-matches"
      description = "notify-closed-matches function service account"
      roles = [
      "projects/nbn23-competition-manager/roles/CustomRole775", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
#   nbn23-competition-manager@appspot.gserviceaccount.com = {
#       name = "App Engine default service account PROD"
#       description = ""
#       roles = [
#       "roles/editor", "roles/iam.serviceAccountUser", "roles/secretmanager.secretAccessor" 
#       ]
#   }
  gcr-geocoder = {
      name = "gcr-geocoder"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-optimalway-match-result = {
      name = "optimalwayMatchResult GC Function"
      description = ""
      roles = [
       
      ]
  }
  gcf-update-match-scores = {
      name = "gcf-update-match-scores"
      description = ""
      roles = [
      "projects/nbn23-competition-manager/roles/CustomRole775", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-subscriptions = {
      name = "subscriptions GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-update-group-stats = {
      name = "gcf-update-group-stats"
      description = ""
      roles = [
      "projects/nbn23-competition-manager/roles/CustomRole775", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-optimalway-service = {
      name = "optimalway-service GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-staff = {
      name = "staff GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-save-file-storage = {
      name = "saveFileStorage GC Function"
      description = ""
      roles = [
      "projects/nbn23-competition-manager/roles/CustomStorageObjectCreator", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-get-audio-chronicle = {
      name = "gcf-get-audio-chronicle"
      description = "get-audio-chronicle GC Fucntion"
      roles = [
      "roles/logging.logWriter", "roles/pubsub.publisher" 
      ]
  }
  gcf-ibba-match-result = {
      name = "ibbaMatchResult GC Function"
      description = ""
      roles = [
       
      ]
  }
  post-game-recap = {
      name = "post-game-recap"
      description = ""
      roles = [
       
      ]
  }
  gcr-sync-last-next-matches = {
      name = "sync-last-next-matches GC Run service"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  swishversenotifications = {
      name = "SwishVerseNotifications"
      description = "Notifications account for SwishVerse"
      roles = [
       
      ]
  }
  gcf-request-scorecard-pdf = {
      name = "requestScorecardPdf GC Function"
      description = ""
      roles = [
      "roles/cloudtasks.enqueuer", "roles/datastore.user", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor", "roles/storage.objectAdmin" 
      ]
  }
  gcr-flower-service = {
      name = "flower-service GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-update-upl-stats = {
      name = "gcf-update-upl-stats"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter" 
      ]
  }
  gcr-gateway = {
      name = "gateway GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-players = {
      name = "players GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-public-rest-api = {
      name = "public-rest-api GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-matches = {
      name = "matches GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-provider-sync = {
      name = "provider-sync GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-prepostmatches = {
      name = "gcr-prepostmatches"
      description = "prepostmatches service"
      roles = [
      "projects/nbn23-competition-manager/roles/CustomRole775", "roles/cloudtrace.agent", "roles/logging.logWriter" 
      ]
  }
  gcf-match-results = {
      name = "matchResults GC Function"
      description = ""
      roles = [
      "roles/cloudtasks.enqueuer", "roles/datastore.user", "roles/logging.admin", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor", "roles/storage.objectAdmin" 
      ]
  }
  gcr-match-sync = {
      name = "match-sync GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-update-match-lineup-stats = {
      name = "gcf-update-match-lineup-stats"
      description = "update-match-lineup-stats function service account"
      roles = [
      "projects/nbn23-competition-manager/roles/CustomRole775", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  k8s-federation = {
      name = "k8s-federation"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/monitoring.metricWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  cloud-tasks = {
      name = "cloud-tasks"
      description = ""
      roles = [
      "roles/cloudtasks.admin" 
      ]
  }
  gcf-match-check-sync = {
      name = "matchCheckSync GC Function"
      description = ""
      roles = [
      "roles/cloudtasks.enqueuer", "roles/datastore.user", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor", "roles/storage.objectAdmin" 
      ]
  }
  gcr-save-actions-events = {
      name = "save-actions-events GC Run service"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-notify-match-pregame = {
      name = "gcf-notify-match-pregame"
      description = "notify-match-pregame function"
      roles = [
      "projects/nbn23-competition-manager/roles/CustomRole775", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-notify-chron-generation = {
      name = "gcf-notify-chronicle-generation"
      description = "gcf-notify-chronicle-generation Google Cloud Function service account"
      roles = [
      "projects/nbn23-competition-manager/roles/CustomRole775", "roles/logging.logWriter" 
      ]
  }
  support = {
      name = "support"
      description = "Cuenta de soporte (Lolo)"
      roles = [
      "roles/datastore.owner", "roles/run.invoker" 
      ]
  }
  gcr-provider-proxy = {
      name = "provider-proxy GC Run service"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter" 
      ]
  }
  gcr-scorekeepers = {
      name = "scorekeepers GC Run service"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-check-audio-chronicle = {
      name = "gcf-check-audio-chronicle"
      description = "check-audio-chronicle GC Function"
      roles = [
      "projects/nbn23-competition-manager/roles/CustomRole775", "roles/logging.logWriter" 
      ]
  }
#   987790506146-compute@developer.gserviceaccount.com = {
#       name = "Compute Engine default service account"
#       description = ""
#       roles = [
#       "roles/editor", "roles/secretmanager.secretAccessor" 
#       ]
#   }
  gcr-projects = {
      name = "projects GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-notification-firebase = {
      name = "notificationFirebase GC Function"
      description = ""
      roles = [
      "organizations/104238922361/roles/CustomFirebaseMessagingCreator", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-sync-queue-manager = {
      name = "sync-queue-manager GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-configurations = {
      name = "configurations GC Run service"
      description = ""
      roles = [
      "projects/nbn23-competition-manager/roles/CustomRole775", "roles/cloudtrace.agent", "roles/datastore.user", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-http-redis = {
      name = "http-redis GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-closed-games-exporter = {
      name = "closed-games-exporter GC Run service"
      description = ""
      roles = [
      "roles/bigquery.dataEditor", "roles/bigquery.metadataViewer", "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-exposure-service = {
      name = "exposure-service GC Run service"
      description = ""
      roles = [
      "projects/nbn23-competition-manager/roles/CustomStorageObjectCreator", "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-export-closed-matches = {
      name = "export-closed-matches GC Function"
      description = ""
      roles = [
      "roles/cloudtasks.enqueuer", "roles/datastore.user", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor", "roles/storage.objectAdmin" 
      ]
  }
  gcr-users = {
      name = "users GC Run service"
      description = ""
      roles = [
      "projects/nbn23-competition-manager/roles/CustomRole", "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-scoresheet-generation-wkr = {
      name = "scoresheet-generation-wkr GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  bervimo-prod = {
      name = "bervimo"
      description = "Bervimo's production service account"
      roles = [
      "organizations/104238922361/roles/CustomBackendDeveloper", "roles/cloudfunctions.invoker", "roles/cloudtasks.enqueuer", "roles/container.admin", "roles/editor", "roles/iam.securityAdmin", "roles/iam.serviceAccountKeyAdmin", "roles/pubsub.publisher", "roles/storage.objectViewer" 
      ]
  }
  gcf-refresh-court-location = {
      name = "gcf-refresh-court-location"
      description = ""
      roles = [
      "roles/cloudtasks.enqueuer", "roles/iam.serviceAccountUser", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-update-unique-players = {
      name = "gcf-update-unique-players"
      description = ""
      roles = [
      "roles/logging.logWriter" 
      ]
  }
  cloud-scheduler = {
      name = "Cloud scheduler"
      description = ""
      roles = [
      "roles/datastore.importExportAdmin" 
      ]
  }
  gcf-check-calendars = {
      name = "gcf-check-calendars"
      description = ""
      roles = [
      "roles/logging.logWriter", "roles/pubsub.publisher" 
      ]
  }
  gcf-get-banner = {
      name = "getBanner GC Function"
      description = ""
      roles = [
      "roles/cloudtasks.enqueuer", "roles/datastore.user", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor", "roles/storage.objectAdmin" 
      ]
  }
  gcf-save-events = {
      name = "saveEvents GC Function"
      description = ""
      roles = [
      "roles/cloudtasks.enqueuer", "roles/datastore.user", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor", "roles/storage.objectAdmin" 
      ]
  }
  gcf-update-match-period-stats = {
      name = "gcf-update-match-period-stats"
      description = ""
      roles = [
      "projects/nbn23-competition-manager/roles/CustomRole775", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-update-comp-lineup-stats = {
      name = "gcf-update-comp-lineup-stats"
      description = "gcf-update-competition-lineup-stats function service account"
      roles = [
      "projects/nbn23-competition-manager/roles/CustomRole775", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-play-store-mutation = {
      name = "playStoreMutation GC Function"
      description = ""
      roles = [
      "roles/cloudtasks.enqueuer", "roles/datastore.user", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor", "roles/storage.objectAdmin" 
      ]
  }
  gcr-stats = {
      name = "stats GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  indalweb = {
      name = "Indalweb"
      description = ""
      roles = [
      "roles/pubsub.subscriber" 
      ]
  }
  gcr-project-exporter = {
      name = "gcr-project-exporter"
      description = "project-exporter GC Run service"
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-search = {
      name = "search GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-optimalway-scorecard = {
      name = "optimalwayScorecard GC Function"
      description = ""
      roles = [
       
      ]
  }
  gcf-get-client-credentials = {
      name = "getClientCredentials GC Function"
      description = ""
      roles = [
      "roles/cloudtasks.enqueuer", "roles/datastore.user", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor", "roles/storage.objectAdmin" 
      ]
  }
  gcr-match-sync-cris = {
      name = "gcr-match-sync-cris"
      description = ""
      roles = [
      "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-ingame-service = {
      name = "ingame-service GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-update-match-team-stats = {
      name = "gcf-update-match-team-stats"
      description = "update-match-team-stats Google Cloud Function"
      roles = [
      "projects/nbn23-competition-manager/roles/CustomRole775", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
}
