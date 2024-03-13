resource "google_cloud_scheduler_job" "job" {
  project = var.project

  for_each = var.jobs

  name             = each.key
  description      = each.value.description
  schedule         = each.value.schedule
  time_zone        = each.value.time_zone
  paused           = each.value.paused
  attempt_deadline = each.value.attempt_deadline
  region           = var.region
  
  dynamic retry_config {
    for_each = each.value.retry_min_backoff != null || each.value.retry_max_backoff != null || each.value.max_retry != null || each.value.max_retry_doublings != null || each.value.retry_count != null ? [1] : []
    content {
        min_backoff_duration = each.value.retry_min_backoff
        max_backoff_duration = each.value.retry_max_backoff
        max_retry_duration = each.value.max_retry
        max_doublings = each.value.max_retry_doublings
        retry_count = each.value.retry_count
    }  
  }

  dynamic pubsub_target {
    for_each = each.value.topic_name != null ? [1] : []
    content {
        topic_name = data.terraform_remote_state.pubsub.outputs.topics[index(data.terraform_remote_state.pubsub.outputs.topics, "projects/${var.project}/topics/${each.value.topic_name}")]
        data       = each.value.topic_data != null ? base64encode(each.value.topic_data) : ""
        attributes = each.value.topic_attributes 
    }
  }

  dynamic app_engine_http_target {
    for_each = each.value.app_engine_uri != null ? [1] : []
    content {
        http_method = each.value.app_engine_http_method
        relative_uri = each.value.app_engine_uri
        body = each.value.app_engine_body
        headers = each.value.app_engine_headers
        
        dynamic app_engine_routing {
            for_each = each.value.app_engine_service != null || each.value.app_engine_version != null || each.value.app_engine_instance != null ? [1] : []
            content {
                service  = each.value.app_engine_service
                version  = each.value.app_engine_version
                instance = each.value.app_engine_instance
            }  
        }
    }
  }

  dynamic http_target {
    for_each = each.value.http_uri != null ? [1] : []
    content {
        http_method = each.value.http_method
        uri         = each.value.http_uri
        body        = each.value.http_body != null ? base64encode(each.value.http_body) : ""
        headers =  each.value.http_headers
        dynamic oauth_token {
          for_each = each.value.oauth_tk_sa != null ? [1] : []
          content {
            service_account_email = data.terraform_remote_state.service_accounts.outputs.sa_email[index(data.terraform_remote_state.service_accounts.outputs.sa_email, each.value.oauth_tk_sa)]
            scope = each.value.oauth_tk_scope
          }
        }
        dynamic oidc_token {
          for_each = each.value.oidc_tk_sa != null ? [1] : []
          content {
              service_account_email = data.terraform_remote_state.service_accounts.outputs.sa_email[index(data.terraform_remote_state.service_accounts.outputs.sa_email, each.value.oidc_tk_sa)]
              audience = each.value.oidc_tk_audience
            }
        }

    }
  }
}