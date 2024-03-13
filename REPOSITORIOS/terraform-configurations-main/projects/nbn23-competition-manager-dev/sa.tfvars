#tf_modules_tag = 1.1.0
project = "nbn23-competition-manager-dev"

external_service_accounts = {
}
project_service_accounts = {
  gcr-providers = {
      name = "providers GC Run service"
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-check-subscription = {
      name = "checkSubscription GC Run Function"
      description = ""
      roles = [
      "roles/cloudtasks.enqueuer", "roles/datastore.user", "roles/logging.admin", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor", "roles/storage.objectAdmin" 
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
  gcr-broadage-service = {
      name = "gcr-broadage-service"
      description = "gcr-broadage-service"
      roles = [
        "roles/cloudtrace.agent",
        "roles/logging.logWriter"
      ]
  }
  gcr-manager-sync = {
      name = "manager-sync GC Run service"
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-project-exporter = {
      name = "gcr-project-exporter"
      description = "project-exporter GC Run service"
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
#   514254341746-compute@developer.gserviceaccount.com = {
#       name = "Compute Engine default service account"
#       description = ""
#       roles = [
#       "roles/editor", "roles/monitoring.metricWriter" 
#       ]
#   }
  gcr-scoresheet-generation-wkr = {
      name = "scoresheet-generation-wkr GC Run service"
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "projects/nbn23-competition-manager-dev/roles/CustomStorageObjectCreator", "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-check-audio-chronicle = {
      name = "gcf-check-audio-chronicle"
      description = "check-audio-chronicle GC Function"
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/logging.logWriter" 
      ]
  }
  gcf-notify-match-pregame = {
      name = "gcf-notify-match-pregame"
      description = "notify-match-pregame function"
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-store-dead-letter = {
      name = "gcf-store-dead-letter"
      description = "Service account for store-dead-letter GC Function"
      roles = [
      "roles/logging.logWriter" 
      ]
  }
  gcr-remove-cache = {
      name = "remove-cache GC Run service"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  remote-scoreboard = {
      name = "remote-scoreboard"
      description = ""
      roles = [
       
      ]
  }
  gcr-ibba-service = {
      name = "ibba-service GC Run service"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-html-converter = {
      name = "html-converter GC Run service"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter" 
      ]
  }
  gcr-save-actions-events = {
      name = "save-actions-events GC Run service"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  fernando-tf-test = {
      name = "fernando-tf-test"
      description = ""
      roles = [
      "roles/pubsub.admin" 
      ]
  }
  gcr-players = {
      name = "players GC Run service"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-update-upl-season-stats = {
      name = "gcf-update-upl-season-stats"
      description = ""
      roles = [
      "roles/cloudtrace.user", "roles/logging.logWriter" 
      ]
  }
  gcr-optimalway-service = {
      name = "optimalway-service GC Run service"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/datastore.viewer", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-search-sync = {
      name = "gcr-search-sync"
      description = "search-sync Google Cloud Run service"
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-update-courts = {
      name = null
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-team-sync = {
      name = "team-sync GC Run service"
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-save-events = {
      name = "saveEvents GC Run Function"
      description = ""
      roles = [
      "roles/cloudtasks.enqueuer", "roles/datastore.user", "roles/logging.admin", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor", "roles/storage.objectAdmin" 
      ]
  }
  gcf-update-group-team-stats = {
      name = "gcf-update-group-team-stats"
      description = "gcf-update-group-team-stats Google Cloud Function"
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-publisher = {
      name = "gcr-publisher"
      description = ""
      roles = [
      "roles/cloudtasks.enqueuer", "roles/pubsublite.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-update-match-period-stats = {
      name = "gcf-update-match-period-stats"
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-match-notify-worker = {
      name = "match-notify-worker GC Run service"
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/cloudtrace.agent", "roles/logging.logWriter" 
      ]
  }
  gcf-get-client-credentials = {
      name = "getClientCredentials GC Run Function"
      description = ""
      roles = [
      "roles/cloudtasks.enqueuer", "roles/datastore.user", "roles/logging.admin", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor", "roles/storage.objectAdmin" 
      ]
  }
  gcf-notify-intg = {
      name = "notifyIntg GC Run Function"
      description = ""
      roles = [
      "roles/cloudtasks.enqueuer", "roles/datastore.user", "roles/logging.admin", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor", "roles/storage.objectAdmin" 
      ]
  }
  gcr-ingame-scoresheets = {
      name = "ingame-scoresheets GC Run service"
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomStorageObjectCreator", "roles/cloudtrace.agent", "roles/datastore.viewer", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-create-leverade-roles = {
      name = "createLeveradeRoles GC Run Function"
      description = ""
      roles = [
      "roles/cloudtasks.enqueuer", "roles/datastore.user", "roles/logging.admin", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor", "roles/storage.objectAdmin" 
      ]
  }
  gcf-notification-firebase = {
      name = "notificationFirebase GC Run Function"
      description = ""
      roles = [
      "organizations/104238922361/roles/CustomFirebaseMessagingCreator", "roles/datastore.user", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-ibba-match-result = {
      name = "ibbaMatchResult GC Run Function"
      description = ""
      roles = [
       
      ]
  }
  gcr-configurations = {
      name = "configurations GC Run service"
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/cloudtrace.agent", "roles/datastore.user", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  bervimo = {
      name = "Bervimo"
      description = "Bernardo Vivens Moreno"
      roles = [
      "roles/container.admin", "roles/editor", "roles/iam.securityAdmin", "roles/monitoring.metricWriter", "roles/monitoring.viewer", "roles/secretmanager.secretAccessor", "roles/storage.objectViewer" 
      ]
  }
  gcr-dbb-service = {
      name = "dbb-service GC Run service"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/datastore.viewer", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-api-core = {
      name = "api-core GC Run service"
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/cloudtrace.agent", "roles/datastore.user", "roles/logging.logWriter", "roles/pubsub.publisher" 
      ]
  }
  function-match-chronicles = {
      name = "function-match-chronicles"
      description = ""
      roles = [
       
      ]
  }
  gcf-get-audio-chronicle = {
      name = "gcf-get-audio-chronicle"
      description = "Access to texto-to-speech"
      roles = [
       
      ]
  }
  gcf-refreshcourtlocation = {
      name = "gcf-refreshCourtLocation"
      description = "refreshCourtLocation"
      roles = [
      "roles/cloudtasks.enqueuer", "roles/cloudtrace.agent", "roles/logging.logWriter" 
      ]
  }
  gcr-subscriber = {
      name = "gcr-subscriber"
      description = ""
      roles = [
      "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-sync-competitions-ow = {
      name = "syncCompetitionsOptimalway GC Function"
      description = ""
      roles = [
       
      ]
  }
  gcr-fhoster-service = {
      name = "fhoster-service GC Run service"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-notify-court-updates = {
      name = "gcf-notify-court-updates"
      description = "notify-court-updates function"
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-match-resync-worker = {
      name = "match-resync-worker GC Run service"
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/cloudtrace.agent", "roles/logging.logWriter" 
      ]
  }
  gcf-store-audio-chronicle = {
      name = "gcf-store-audio-chronicle"
      description = "store-audio-chronicle function"
      roles = [
      "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-check-calendars = {
      name = "gcf-check-calendars"
      description = ""
      roles = [
      "roles/logging.logWriter", "roles/pubsub.publisher" 
      ]
  }
  github-actions = {
      name = "Github Actions"
      description = "Service account to be used by Github Actions to deploy services"
      roles = [
       
      ]
  }
  gcf-refresh-court-location = {
      name = "gcf-refresh-court-location"
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  firebase-adminsdk-hm5hn = {
      name = "firebase-adminsdk"
      description = "Firebase Admin SDK Service Agent"
      roles = [
      "roles/storage.admin" 
      ]
  }
  gcr-stats = {
      name = "stats GC Run service"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-update-match-scores = {
      name = "gcf-update-match-scores"
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-app-store-subscription = {
      name = "appStoreSubscription GC Run Function"
      description = ""
      roles = [
      "roles/cloudtasks.enqueuer", "roles/datastore.user", "roles/logging.admin", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor", "roles/storage.objectAdmin" 
      ]
  }
  gcf-optimalway-scorecard = {
      name = "optimalwayScorecard GC Run Function"
      description = ""
      roles = [
       
      ]
  }
  gcr-core-authentication = {
      name = "gcr-core-authentication"
      description = ""
      roles = [
      ]
  }
  gcr-gateway = {
      name = "gateway GC Run service"
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole", "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-provider-sync = {
      name = "provider-sync GC Run service"
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-leverade-service = {
      name = "leverade-service GC Run service"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/datastore.viewer", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-notify-closed-matches = {
      name = "gcf-notify-closed-matches"
      description = "notify-closed-matches function"
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  remote-matches-emitter = {
      name = "remote-matches-emitter"
      description = "Demo account for remote matches documentation"
      roles = [
       
      ]
  }
  gcr-exposure-service = {
      name = "exposure-service GC Run service"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-export-user-metrics = {
      name = "exportUserMetrics GC Run Function"
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomStorageObjectCreator", "roles/cloudtasks.enqueuer", "roles/datastore.user", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-update-upl-stats = {
      name = "gcf-update-upl-stats"
      description = ""
      roles = [
      "roles/cloudtrace.user", "roles/logging.logWriter" 
      ]
  }
  gcf-update-match-team-stats = {
      name = "gcf-update-match-team-stats"
      description = "update-match-team-stats Google Cloud Function"
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-save-file-storage = {
      name = "saveFileStorage GC Run Function"
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomStorageObjectCreator", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-prepostmatches = {
      name = "gcr-prepostmatches"
      description = "prepostmatches service"
      roles = [
      "roles/cloudtasks.enqueuer", "roles/cloudtrace.agent", "roles/iam.serviceAccountUser", "roles/logging.logWriter", "roles/run.invoker", "roles/storage.objectViewer" 
      ]
  }
  firebase-adminsdk-55pst = {
      name = "firebase-adminsdk"
      description = ""
      roles = [
       
      ]
  }
  gcf-update-match-status = {
      name = "gcf-update-match-status"
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-courts = {
      name = "gcr-courts"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-sync-queue-manager = {
      name = "sync-queue-manager GC Run service"
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-notify-match-startup = {
      name = "gcf-notify-match-startup"
      description = "notify-match-startup function service account"
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/datastore.viewer", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-sync-competitions-leverade = {
      name = "syncCompetitionsLeverade GC Run Function"
      description = ""
      roles = [
       
      ]
  }
  k8s-federation = {
      name = "k8s-federation"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/monitoring.metricWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-scorekeepers-external = {
      name = "gcr-scorekeepers-external"
      description = ""
      roles = [
       
      ]
  }
  gcf-get-banner = {
      name = "getBanner GC Run Function"
      description = ""
      roles = [
      "roles/cloudtasks.enqueuer", "roles/datastore.user", "roles/logging.admin", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor", "roles/storage.objectAdmin" 
      ]
  }
  gcr-matches = {
      name = "matches GC Run service"
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  scoresheet-8-periods = {
      name = "scoresheet-8-periods"
      description = ""
      roles = [
       
      ]
  }
  gcf-request-scorecard-pdf = {
      name = "requestScorecardPdf GC Run Function"
      description = ""
      roles = [
      "roles/cloudtasks.enqueuer", "roles/datastore.user", "roles/logging.admin", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor", "roles/storage.objectAdmin" 
      ]
  }
  gcf-optimalway-match-result = {
      name = "optimalwayMatchResult GC Run Function"
      description = ""
      roles = [
       
      ]
  }
  gcr-scorekeepers = {
      name = "scorekeepers GC Run service"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-basketplan-service = {
      name = "basketplan-service GC Run service"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-delete-reviewed-matches = {
      name = "delete-reviewed-matches GC Function"
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-public-rest-api = {
      name = "public-rest-api GC Run service"
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/logging.admin", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-flower-service = {
      name = "flower-service GC Run service"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/datastore.viewer", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  firebase-adminsdk-oupsg = {
      name = "firebase-adminsdk"
      description = ""
      roles = [
      "roles/firebase.sdkAdminServiceAgent" 
      ]
  }
  gcr-app-backend = {
      name = "app-backend GC Run service"
      description = ""
      roles = [
      "roles/cloudbuild.builds.editor", "roles/cloudfunctions.developer", "roles/cloudtasks.enqueuer", "roles/cloudtrace.agent", "roles/datastore.user", "roles/editor", "roles/logging.logWriter", "roles/run.invoker", "roles/secretmanager.secretAccessor", "roles/storage.objectViewer" 
      ]
  }
  gcr-ingame-service = {
      name = "ingame-service GC Run service"
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "projects/nbn23-competition-manager-dev/roles/CustomStorageObjectCreator", "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-update-group-stats = {
      name = "gcf-update-group-stats"
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-sync-last-next-matches = {
      name = "sync-last-next-matches GC Run service"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-teams = {
      name = "teams GC Run service"
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-indalweb-service = {
      name = "indalweb-service GC Run service"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/datastore.viewer", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  firebase-adminsdk-5fnsw = {
      name = "firebase-adminsdk"
      description = "Firebase Admin SDK Service Agent"
      roles = [
       
      ]
  }
  cloud-tasks = {
      name = "cloud-tasks"
      description = ""
      roles = [
      "roles/cloudtasks.admin" 
      ]
  }
  gcf-update-match-actor-stats = {
      name = "gcf-update-match-actor-stats "
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-users = {
      name = "users GC Run service"
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole541", "roles/cloudtrace.agent", "roles/firebaseauth.admin", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-update-comp-lineup-stats = {
      name = "gcf-update-comp-lineup-stats"
      description = "update-competition-lineup-stats function service account"
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-match-results = {
      name = "matchResults GC Run Function"
      description = ""
      roles = [
      "roles/cloudtasks.enqueuer", "roles/datastore.user", "roles/logging.admin", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor", "roles/storage.objectAdmin" 
      ]
  }
  continuous-integration = {
      name = "continuous-integration"
      description = "Account to use with our CI Services"
      roles = [
      "roles/artifactregistry.writer", "roles/cloudbuild.builds.builder", "roles/cloudfunctions.developer", "roles/iam.serviceAccountUser", "roles/iam.workloadIdentityUser", "roles/run.admin", "roles/storage.admin", "roles/viewer" 
      ]
  }
  cron-sync-queue-manager = {
      name = "cron-sync-queue-manager"
      description = "Cloud Scheduler tasks invoking the GCR service sync-queue-manager"
      roles = [
      "roles/run.invoker" 
      ]
  }
  functions-match-chronicles = {
      name = "functions-match-chronicles"
      description = ""
      roles = [
      "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  berni-vivens = {
      name = "Berni Vivens"
      description = "Development Account: Berni"
      roles = [
       
      ]
  }
  gcr-search = {
      name = "search GC Run service"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-update-match-stats = {
      name = "gcf-update-match-stats"
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-http-redis = {
      name = "http-redis GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-match-check-sync = {
      name = "matchCheckSync GC Run Function"
      description = ""
      roles = [
      "roles/cloudtasks.enqueuer", "roles/datastore.user", "roles/logging.admin", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor", "roles/storage.objectAdmin" 
      ]
  }
  manuel-bea = {
      name = "Manuel Bea"
      description = "Development Account: Manuel"
      roles = [
       
      ]
  }
  gcf-export-closed-matches = {
      name = "export-closed-matches GC Function"
      description = ""
      roles = [
      "roles/cloudtasks.enqueuer", "roles/datastore.user", "roles/logging.admin", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor", "roles/storage.objectAdmin" 
      ]
  }
  gcr-nlp = {
      name = "gcr-nlp"
      description = "Service account for NLP (Natural Language Processor) service"
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter" 
      ]
  }
  gcf-check-roundless-matches = {
      name = "gcf-check-roundless-matches"
      description = ""
      roles = [
      "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-update-group-lineup-stats = {
      name = "gcf-update-group-lineup-stats"
      description = "update-group-lineup-stats function service account"
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
#   nbn23-competition-manager-dev@appspot.gserviceaccount.com = {
#       name = "Default service account"
#       description = ""
#       roles = [
#       "roles/cloudtasks.enqueuer", "roles/datastore.user", "roles/iam.serviceAccountUser", "roles/logging.admin", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor", "roles/storage.objectAdmin" 
#       ]
#   }
  gcr-match-sync-cris = {
      name = "gcr-match-sync-cris"
      description = ""
      roles = [
      "roles/cloudtasks.enqueuer", "roles/cloudtrace.agent", "roles/datastore.user", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-closed-games-exporter = {
      name = "closed-games-exporter GC Run service"
      description = ""
      roles = [
      "roles/editor", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-notify-chron-generation = {
      name = "gcf-notify-chronicle-generation"
      description = "gcf-notify-chronicle-generation Google Cloud Function service account"
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/logging.logWriter" 
      ]
  }
  gcr-subscriptions = {
      name = "subscriptions GC Run service"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-sync-competitions-indalweb = {
      name = "syncCompetitionsIndalweb GC Run Function"
      description = ""
      roles = [
       
      ]
  }
  gcr-geocoder = {
      name = "gcr-geocoder"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-home = {
      name = "home GC Run service"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  cloud-scheduler = {
      name = "cloud scheduler"
      description = ""
      roles = [
      "roles/datastore.importExportAdmin" 
      ]
  }
  gcr-match-sync = {
      name = "match-sync GC Run service"
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/cloudtrace.agent", "roles/datastore.user", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-pixellot-service = {
      name = "pixellot-service GC Run service"
      description = ""
      roles = [
      "roles/editor" 
      ]
  }
  gcr-leris-service = {
      name = "leris-service GC Run service"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-update-unique-players = {
      name = "gcf-update-unique-players"
      description = ""
      roles = [
      "roles/logging.logWriter" 
      ]
  }
  gcf-notify-calendar-changes = {
      name = "notify-calendar-changes GC Function"
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-play-store-mutation = {
      name = "playStoreMutation GC Run Function"
      description = ""
      roles = [
      "roles/cloudtasks.enqueuer", "roles/datastore.user", "roles/logging.admin", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor", "roles/storage.objectAdmin" 
      ]
  }
  gcf-leverade-match-result = {
      name = "leveradeMatchResult GC Run Function"
      description = ""
      roles = [
       
      ]
  }
  gcr-projects = {
      name = "projects GC Run service"
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/cloudtrace.agent", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-player-sync = {
      name = "player-sync GC Run service"
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/cloudtrace.agent", "roles/datastore.viewer", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-update-comp-team-stats = {
      name = "gcf-update-comp-team-stats"
      description = "update-competition-team-stats Google Cloud Function"
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-update-match-lineup-stats = {
      name = "gcf-update-match-lineup-stats"
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/logging.logWriter", "roles/pubsub.publisher", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcf-generate-audio-chronicle = {
      name = "gcf-generate-audio-chronicle"
      description = "generate-audio-chronicle function"
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
  gcr-provider-proxy = {
      name = "provider-proxy GC Run service"
      description = ""
      roles = [
      "roles/cloudtrace.agent", "roles/logging.logWriter" 
      ]
  }
  gcf-update-competition-stats = {
      name = "gcf-update-competition-stats"
      description = ""
      roles = [
      "projects/nbn23-competition-manager-dev/roles/CustomRole280", "roles/logging.logWriter", "roles/secretmanager.secretAccessor" 
      ]
  }
}