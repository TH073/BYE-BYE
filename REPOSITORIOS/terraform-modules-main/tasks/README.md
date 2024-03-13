Latest Version tasks module: v1.0.0_tasks

Allows creating new queues. 

Example: 
```
project = "nbn23-competition-manager-dev"
location = "europe-west1"

queues = {
  "default" = {
      max_concurrent_dispatches = 5000
      max_dispatches_per_second = 500.0
      max_retry_attempts = 1
      max_retry_backoff = "1s"
      min_retry_backoff = "1s"
      max_doublings = 1
      enqueuers = []
  }
  "manager-sync-competition" = {
      max_concurrent_dispatches = 1
      max_dispatches_per_second = 1.0
      max_retry_attempts = 5
      max_retry_backoff = "3600s"
      min_retry_backoff = "0.100s"
      max_doublings = 16
      enable_routing_override = true
      enqueuers = [
        "serviceAccount:tf-admin@nbn23-terraform.iam.gserviceaccount.com",
        "serviceAccount:tf-operator@nbn23-terraform.iam.gserviceaccount.com"
      ]
  }
}