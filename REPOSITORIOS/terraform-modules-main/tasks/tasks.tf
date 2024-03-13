resource "google_cloud_tasks_queue" "queues" {
  location = var.location
  project = var.project

  for_each = var.queue
  
  name = each.key

  dynamic app_engine_routing_override {
    for_each = each.value.enable_routing_override != null  || each.value.app_engine_routing_version != null || each.value.app_engine_routing_instance != null ? [1] : []
    content {
        service = each.value.app_engine_routing_service
        version = each.value.app_engine_routing_version
        instance = each.value.app_engine_routing_instance 
    }
  }

  dynamic rate_limits {
    for_each = each.value.max_concurrent_dispatches != null || each.value.max_dispatches_per_second != null ? [1] : []

    content {
        max_concurrent_dispatches = each.value.max_concurrent_dispatches
        max_dispatches_per_second = each.value.max_dispatches_per_second
    }
  }

  dynamic retry_config {
    for_each = each.value.max_retry_attempts != null || each.value.max_retry_duration != null || each.value.max_retry_backoff != null || each.value.min_retry_backoff != null || each.value.max_doublings != null ? [1] : []

    content {
        max_attempts = each.value.max_retry_attempts
        max_retry_duration = each.value.max_retry_duration
        max_backoff = each.value.max_retry_backoff
        min_backoff = each.value.min_retry_backoff
        max_doublings = each.value.max_doublings
    }
  }

}