Latest Version scheduler module: v1.0.0_scheduler

Allows creating all types of scheduled jobs. 

Example: 
```
#tf_modules_tag = 1.0.0
project = "nbn23-competition-manager-dev"
region = "europe-west1"
jobs = {
  checkSubscriptions = {
      description = "Triggers GCF checkSubscriptions every hour"
      schedule = "0 fill_tfvars.sh jobs_list.json scheduler.tfvars scheduler_cmdev.tfvars variables.tf fill_tfvars.sh jobs_list.json scheduler.tfvars scheduler_cmdev.tfvars variables.tf fill_tfvars.sh jobs_list.json scheduler.tfvars scheduler_cmdev.tfvars variables.tf *"
      paused = true
      time_zone = "Europe/Madrid"
      retry_min_backoff = "5s"
      retry_max_backoff = "3600s"
      max_retry = "0s"
      max_retry_doublings = 5
      topic_name = "check.Subscriptions"
      topic_data = "eA=="
  }
  datastore-backup-dev = {
      description = "Datastore backup entities in dev environment."
      schedule = "0 6 fill_tfvars.sh jobs_list.json scheduler.tfvars scheduler_cmdev.tfvars variables.tf fill_tfvars.sh jobs_list.json scheduler.tfvars scheduler_cmdev.tfvars variables.tf 1"
      paused = true
      attempt_deadline = "180s"
      time_zone = "Europe/Madrid"
      http_method = "POST"
      http_uri = "https://datastore.googleapis.com/v1/projects/nbn23-competition-manager-dev:export"
      http_body = "ewoib3V0cHV0VXJsUHJlZml4IjogImdzOi8vZGF0YXN0b3JlLW1hdGNoZXMtYmFja3VwLWRldiIsCiJlbnRpdHlGaWx0ZXIiOiB7ICJraW5kcyI6IFtdLCAibmFtZXNwYWNlSWRzIjogWyIiXSB9Cn0="
      http_headers = {
  "Content-Type": "application/octet-stream",
  "User-Agent": "Google-Cloud-Scheduler"
}
      oauth_tk_sa = "cloud-scheduler@nbn23-competition-manager-dev.iam.gserviceaccount.com"
      oauth_tk_scope = "https://www.googleapis.com/auth/cloud-platform"
  }
  fill-basketplan-competitions = {
      description = "Triggers process to get new competitions for Basketplan integration"
      schedule = "0 0 */1 fill_tfvars.sh jobs_list.json scheduler.tfvars scheduler_cmdev.tfvars variables.tf *"
      paused = true
      attempt_deadline = "180s"
      time_zone = "Europe/Madrid"
      retry_min_backoff = "5s"
      retry_max_backoff = "3600s"
      max_retry = "0s"
      max_retry_doublings = 5
      http_method = "POST"
      http_uri = "https://manager-sync-kgju3lmrya-ew.a.run.app/basketplan/competition/list"
      http_headers = {
  "User-Agent": "Google-Cloud-Scheduler"
}
  }
}