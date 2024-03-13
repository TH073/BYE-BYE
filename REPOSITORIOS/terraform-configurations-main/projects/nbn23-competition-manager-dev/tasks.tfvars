#tf_modules_tag = 1.1.0

project = "nbn23-competition-manager-dev"
location = "europe-west1"

queue = {
  "audio-generation-queue" = {
      max_concurrent_dispatches = 1000
      max_dispatches_per_second = 500.0
      max_retry_attempts = 100
      max_retry_backoff = "3600s"
      min_retry_backoff = "0.100s"
      max_doublings = 16
      enqueuers = []
  }
  "broadage-live-matches" = {
      max_concurrent_dispatches = 1000
      max_dispatches_per_second = 500.0
      max_retry_attempts = 100
      max_retry_backoff = "3600s"
      min_retry_backoff = "0.100s"
      max_doublings = 16
      enqueuers = [
        "serviceAccount:gcf-handle-broadage-lmatch@nbn23-competition-manager-dev.iam.gserviceaccount.com"
      ]
  }
  "chronicle-generation-queue" = {
      max_concurrent_dispatches = 1000
      max_dispatches_per_second = 500.0
      max_retry_attempts = 100
      max_retry_backoff = "3600s"
      min_retry_backoff = "0.100s"
      max_doublings = 16
      enqueuers = []
  }
  "closed-matches-bi" = {
      max_concurrent_dispatches = 1
      max_dispatches_per_second = 1.0
      max_retry_attempts = 1
      max_retry_backoff = "3600s"
      min_retry_backoff = "0.100s"
      max_doublings = 16
      enqueuers = []
  }
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
      enqueuers = []
  }
  "match-close" = {
      max_concurrent_dispatches = 2
      max_dispatches_per_second = 2.0
      max_retry_attempts = 5
      max_retry_backoff = "10s"
      min_retry_backoff = "1s"
      max_doublings = 2
      enable_routing_override = true
      enqueuers = []
  }
  "match-closure-sync" = {
      max_concurrent_dispatches = 1
      max_dispatches_per_second = 500.0
      max_retry_attempts = 10
      max_retry_backoff = "3600s"
      min_retry_backoff = "0.100s"
      max_doublings = 16
      enable_routing_override = true
      enqueuers = []
  }
  "match-notify-queue" = {
      max_concurrent_dispatches = 2
      max_dispatches_per_second = 2.0
      max_retry_attempts = 5
      max_retry_backoff = "10s"
      min_retry_backoff = "1s"
      max_doublings = 2
      enqueuers = []
  }
  "notification-firebase" = {
      max_concurrent_dispatches = 1
      max_dispatches_per_second = 500.0
      max_retry_attempts = 100
      max_retry_backoff = "3600s"
      min_retry_backoff = "0.100s"
      max_doublings = 16
      enqueuers = []
  }
  "remove-cache" = {
      max_concurrent_dispatches = 140
      max_dispatches_per_second = 500.0
      max_retry_attempts = 10
      max_retry_backoff = "3600s"
      min_retry_backoff = "0.100s"
      max_doublings = 16
      enable_routing_override = true
      enqueuers = [
        "serviceAccount:gcf-update-upl-stats@nbn23-competition-manager-dev.iam.gserviceaccount.com"
      ]
  }
  "request-resources" = {
      max_concurrent_dispatches = 100
      max_dispatches_per_second = 100.0
      max_retry_attempts = 3
      max_retry_backoff = "5s"
      min_retry_backoff = "1s"
      max_doublings = 3
      enqueuers = []
  }
  "scorekeepers" = {
      max_concurrent_dispatches = 1000
      max_dispatches_per_second = 500.0
      max_retry_attempts = 100
      max_retry_backoff = "3600s"
      min_retry_backoff = "0.100s"
      max_doublings = 16
      enqueuers = []
  }
  "scoresheet-generation-queue" = {
      max_concurrent_dispatches = 2
      max_dispatches_per_second = 2.0
      max_retry_attempts = 5
      max_retry_backoff = "10s"
      min_retry_backoff = "1s"
      max_doublings = 2
      enqueuers = []
  }
  "subscriptions" = {
      max_concurrent_dispatches = 1000
      max_dispatches_per_second = 500.0
      max_retry_attempts = 100
      max_retry_duration = "10s"
      max_retry_backoff = "3600s"
      min_retry_backoff = "0.100s"
      max_doublings = 16
      enable_routing_override = true
      enqueuers = []
  }
  "sync-basketplan" = {
      max_concurrent_dispatches = 1
      max_dispatches_per_second = 1.0
      max_retry_attempts = 5
      max_retry_backoff = "600s"
      min_retry_backoff = "60s"
      max_doublings = 5
      enqueuers = []
  }
  "sync-broadage" = {
      max_concurrent_dispatches = 1
      max_dispatches_per_second = 1.0
      max_retry_attempts = 5
      max_retry_backoff = "600s"
      min_retry_backoff = "57s"
      max_doublings = 5
      enqueuers = [
        "serviceAccount:gcr-sync-queue-manager@nbn23-competition-manager-dev.iam.gserviceaccount.com"
      ]
  }
  "sync-dbb" = {
      max_concurrent_dispatches = 1
      max_dispatches_per_second = 1.0
      max_retry_attempts = 5
      max_retry_backoff = "600s"
      min_retry_backoff = "60s"
      max_doublings = 5
      enqueuers = []
  }
  "sync-exposure" = {
      max_concurrent_dispatches = 1
      max_dispatches_per_second = 1.0
      max_retry_attempts = 5
      max_retry_backoff = "600s"
      min_retry_backoff = "60s"
      max_doublings = 5
      enqueuers = []
  }
  "sync-fhoster" = {
      max_concurrent_dispatches = 1
      max_dispatches_per_second = 1.0
      max_retry_attempts = 5
      max_retry_backoff = "600s"
      min_retry_backoff = "60s"
      max_doublings = 5
      enqueuers = []
  }
  "sync-flower" = {
      max_concurrent_dispatches = 1
      max_dispatches_per_second = 1.0
      max_retry_attempts = 5
      max_retry_backoff = "600s"
      min_retry_backoff = "60s"
      max_doublings = 5
      enqueuers = []
  }
  "sync-ibba" = {
      max_concurrent_dispatches = 1
      max_dispatches_per_second = 1.0
      max_retry_attempts = 5
      max_retry_backoff = "600s"
      min_retry_backoff = "60s"
      max_doublings = 5
      enqueuers = []
  }
  "sync-indalweb" = {
      max_concurrent_dispatches = 1
      max_dispatches_per_second = 1.0
      max_retry_attempts = 5
      max_retry_backoff = "600s"
      min_retry_backoff = "60s"
      max_doublings = 5
      enqueuers = []
  }
  "sync-last-next-matches" = {
      max_concurrent_dispatches = 1
      max_dispatches_per_second = 500.0
      max_retry_attempts = 10
      max_retry_backoff = "3600s"
      min_retry_backoff = "0.100s"
      max_doublings = 16
      enqueuers = []
  }
  "sync-leris" = {
      max_concurrent_dispatches = 1
      max_dispatches_per_second = 1.0
      max_retry_attempts = 5
      max_retry_backoff = "600s"
      min_retry_backoff = "60s"
      max_doublings = 5
      enqueuers = []
  }
  "sync-leverade" = {
      max_concurrent_dispatches = 1
      max_dispatches_per_second = 1.0
      max_retry_attempts = 5
      max_retry_backoff = "600s"
      min_retry_backoff = "60s"
      max_doublings = 5
      enqueuers = []
  }
  "sync-optimalway" = {
      max_concurrent_dispatches = 1
      max_dispatches_per_second = 1.0
      max_retry_attempts = 5
      max_retry_backoff = "600s"
      min_retry_backoff = "57s"
      max_doublings = 5
      enqueuers = []
  }
  "update-courts" = {
      max_concurrent_dispatches = 1
      max_dispatches_per_second = 500.0
      max_retry_attempts = 100
      max_retry_backoff = "3600s"
      min_retry_backoff = "0.100s"
      max_doublings = 16
      enqueuers = []
  }
}
