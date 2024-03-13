variable "credentials" {
  description = "Credentials path and file"
  type = string
  default = "credentials/credentials.json"
}

variable "jobs" {
  description = "Map of Scheduler jobs"
  type        = map(object({
    description = optional(string)
    schedule = optional(string)
    paused = optional(bool) # defaults to fals
    attempt_deadline = optional(string)
    time_zone = optional(string)
    
    # retry_config
    retry_min_backoff = optional(string)
    retry_max_backoff = optional(string)
    max_retry = optional(string)
    max_retry_doublings = optional(number)
    retry_count = optional(number)

    # pubsub_target
    topic_name = optional(string)
    topic_data       = optional(string)
    topic_attributes = optional(map(string))

    # app_engine_http_target
    app_engine_http_method = optional(string)
    app_engine_uri = optional(string)
    app_engine_body = optional(string)
    app_engine_headers = optional(map(string))
      # http_target
    app_engine_service = optional(string)
    app_engine_version = optional(string)
    app_engine_instance = optional(string)

    # http_target
    http_method = optional(string)
    http_uri = optional(string)
    http_body = optional(string)
    http_headers = optional(map(string))
      # oauth
    oauth_tk_sa = optional(string)
    oauth_tk_scope = optional(string)
      # oidc
    oidc_tk_sa = optional(string)
    oidc_tk_audience = optional(string)


    }))
}

variable "project" {
  description = "Google project name"
  type        = string
}

variable "region" {
  description = "Jobs Region"
  type        = string
}

