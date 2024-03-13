#tf_modules_tag = 1.0.0
project = "nbn23-competition-manager-dev"
region = "europe-west1"
jobs = {
  checkSubscriptions = {
      description = "Triggers GCF checkSubscriptions every hour"
      schedule = "0 * * * *"
      time_zone = "Europe/Madrid"
      retry_min_backoff = "5s"
      retry_max_backoff = "3600s"
      max_retry = "0s"
      max_retry_doublings = 5
      topic_name = "check.Subscriptions"
      topic_data = "x"
  }
  datastore-backup-dev = {
      description = "Datastore backup entities in dev environment."
      schedule = "0 6 * * 1"
      attempt_deadline = "180s"
      time_zone = "Europe/Madrid"
      http_method = "POST"
      http_uri = "https://datastore.googleapis.com/v1/projects/nbn23-competition-manager-dev:export"
      http_body = "{\n\"outputUrlPrefix\": \"gs://datastore-matches-backup-dev\",\n\"entityFilter\": { \"kinds\": [], \"namespaceIds\": [\"\"] }\n}"
      oauth_tk_sa = "cloud-scheduler@nbn23-competition-manager-dev.iam.gserviceaccount.com"
      oauth_tk_scope = "https://www.googleapis.com/auth/cloud-platform"
  }
  fill-basketplan-competitions = {
      description = "Triggers process to get new competitions for Basketplan integration"
      schedule = "0 0 */1 * *"
      attempt_deadline = "180s"
      time_zone = "Europe/Madrid"
      retry_min_backoff = "5s"
      retry_max_backoff = "3600s"
      max_retry = "0s"
      max_retry_doublings = 5
      http_method = "POST"
      http_uri = "https://manager-sync-kgju3lmrya-ew.a.run.app/basketplan/competition/list"
  }
  fill-broadage-competitions = {
      description = "Triggers process to get new competitions for Broadage integration"
      schedule = "0 0 * * *"
      attempt_deadline = "180s"
      time_zone = "Europe/Madrid"
      retry_min_backoff = "5s"
      retry_max_backoff = "3600s"
      max_retry = "0s"
      max_retry_doublings = 5
      http_method = "POST"
      http_uri = "https://manager-sync-kgju3lmrya-ew.a.run.app/broadage/competition/list"

  }
  fill-dbb-competitions = {
      description = "Triggers process to get new competitions for DBB integration"
      schedule = "0 0 */1 * *"
      attempt_deadline = "180s"
      time_zone = "Europe/Madrid"
      retry_min_backoff = "5s"
      retry_max_backoff = "3600s"
      max_retry = "0s"
      max_retry_doublings = 5
      http_method = "POST"
      http_uri = "https://manager-sync-kgju3lmrya-ew.a.run.app/dbb/competition/list"

  }
  fill-exposure-competitions = {
      description = "Triggers process to get new competitions for DBB integration"
      schedule = "0 0 */1 * *"
      attempt_deadline = "180s"
      time_zone = "Europe/Madrid"
      retry_min_backoff = "5s"
      retry_max_backoff = "3600s"
      max_retry = "0s"
      max_retry_doublings = 5
      http_method = "POST"
      http_uri = "https://manager-sync-kgju3lmrya-ew.a.run.app/exposure/competition/list"

  }
  fill-fhoster-competitions = {
      description = "Triggers process to get new competitions for leris integration"
      schedule = "0 0 */1 * *"
      attempt_deadline = "180s"
      time_zone = "Europe/Madrid"
      retry_min_backoff = "5s"
      retry_max_backoff = "3600s"
      max_retry = "0s"
      max_retry_doublings = 5
      http_method = "POST"
      http_uri = "https://manager-sync-kgju3lmrya-ew.a.run.app/fhoster/competition/list"

  }
  fill-flower-competitions = {
      description = "Triggers process to get new competitions for Flower integration"
      schedule = "0 0 */1 * *"
      attempt_deadline = "180s"
      time_zone = "Europe/Brussels"
      retry_min_backoff = "5s"
      retry_max_backoff = "3600s"
      max_retry = "0s"
      max_retry_doublings = 5
      http_method = "POST"
      http_uri = "https://manager-sync-kgju3lmrya-ew.a.run.app/flower/competition/list"

  }
  fill-ibba-competitions = {
      schedule = "0 0 */1 * *"
      attempt_deadline = "180s"
      time_zone = "Europe/Madrid"
      retry_min_backoff = "5s"
      retry_max_backoff = "3600s"
      max_retry = "0s"
      max_retry_doublings = 5
      http_method = "POST"
      http_uri = "https://manager-sync-kgju3lmrya-ew.a.run.app/ibba/competition/list"

  }
  fill-indalweb-competitions = {
      description = "Triggers GCF which get new Indalweb's competitions"
      schedule = "0 0 */1 * *"
      attempt_deadline = "180s"
      time_zone = "Europe/Madrid"
      retry_min_backoff = "5s"
      retry_max_backoff = "3600s"
      max_retry = "0s"
      max_retry_doublings = 5
      http_method = "POST"
      http_uri = "https://manager-sync-kgju3lmrya-ew.a.run.app/indalweb/competition/list"

  }
  fill-leris-competitions = {
      description = "Triggers process to get new competitions for leris integration"
      schedule = "0 0 */1 * *"
      attempt_deadline = "180s"
      time_zone = "Europe/Madrid"
      retry_min_backoff = "5s"
      retry_max_backoff = "3600s"
      max_retry = "0s"
      max_retry_doublings = 5
      http_method = "POST"
      http_uri = "https://manager-sync-kgju3lmrya-ew.a.run.app/leris/competition/list"

  }
  fill-leverade-competitions = {
      description = "Triggers GCF which get new Leverade's competitions"
      schedule = "0 */1 * * *"
      attempt_deadline = "180s"
      time_zone = "Europe/Madrid"
      retry_min_backoff = "5s"
      retry_max_backoff = "3600s"
      max_retry = "0s"
      max_retry_doublings = 5
      http_method = "POST"
      http_uri = "https://manager-sync-kgju3lmrya-ew.a.run.app/leverade/competition/list"

  }
  fill-optimalway-competitions = {
      description = "Triggers GCF which get new Optimalway's competitions"
      schedule = "0 9 * * *"
      attempt_deadline = "180s"
      time_zone = "Europe/Madrid"
      retry_min_backoff = "5s"
      retry_max_backoff = "3600s"
      max_retry = "0s"
      max_retry_doublings = 5
      http_method = "POST"
      http_uri = "https://manager-sync-kgju3lmrya-ew.a.run.app/optimalway/competition/list"

  }
  notify-match-pregame = {
      description = "Notifies match pregame availability"
      schedule = "0 */1 * * *"
      attempt_deadline = "180s"
      time_zone = "Europe/Madrid"
      retry_min_backoff = "5s"
      retry_max_backoff = "3600s"
      max_retry = "0s"
      max_retry_doublings = 5
      http_method = "POST"
      http_uri = "https://notify-match-pregame-kgju3lmrya-ew.a.run.app/"

      oidc_tk_sa = "gcf-notify-match-pregame@nbn23-competition-manager-dev.iam.gserviceaccount.com"
      oidc_tk_audience = "https://notify-match-pregame-kgju3lmrya-ew.a.run.app"
  }
  process-resources = {
      schedule = "*/1 * * * *"
      attempt_deadline = "180s"
      time_zone = "Europe/Brussels"
      retry_min_backoff = "5s"
      retry_max_backoff = "3600s"
      max_retry = "0s"
      max_retry_doublings = 5
      http_method = "POST"
      http_uri = "https://sync-queue-manager-kgju3lmrya-ew.a.run.app/process"
      http_body = "{\"providers\": [\"leverade\", \"optimalway\", \"indalweb\", \"dbb\", \"exposure\",\"flower\", \"leris\", \"basketplan\",\"fhoster\",\"ibba\"], \"types\": [\"COMPETITION\", \"STANDINGS\"]}"
      http_headers = {
  "Content-Type": "application/json"
}
      oidc_tk_sa = "cron-sync-queue-manager@nbn23-competition-manager-dev.iam.gserviceaccount.com"
      oidc_tk_audience = "https://sync-queue-manager-kgju3lmrya-ew.a.run.app/process"
  }
  refresh-court-location = {
      description = "refresh-court-location function hourly"
      schedule = "0 */1 * * *"
      attempt_deadline = "180s"
      time_zone = "Europe/Madrid"
      retry_min_backoff = "5s"
      retry_max_backoff = "3600s"
      max_retry = "0s"
      max_retry_doublings = 5
      http_method = "POST"
      http_uri = "https://refresh-court-location-kgju3lmrya-ew.a.run.app/"
      oidc_tk_sa = "gcf-refresh-court-location@nbn23-competition-manager-dev.iam.gserviceaccount.com"
      oidc_tk_audience = "https://refresh-court-location-kgju3lmrya-ew.a.run.app/"
  }
}
