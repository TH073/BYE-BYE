# Alphabetic order
variable "credentials" {
  description = "Credentials path and file"
  type = string
  default = "credentials/credentials.json"
}

variable "location" {
  description = "Bucket location"
  type        = string
  default     = "europe-west1"

  validation {
    condition     = can(regex("^(europe|us|asia)-(west|us|asia)(1|2|3|4|5|6)$", var.location))
    error_message = "Location is not valid. Please choose a valid location."
  }

}

variable "project" {
  description = "Google project name"
  type        = string
}

variable "queue" {
  description = "A queue resource"
  type        = map(object({
    app_engine_routing_service = optional(string)
    app_engine_routing_version = optional(string)
    app_engine_routing_instance = optional(string)
    enable_routing_override = optional(bool)
    
    # rate_limits
    max_concurrent_dispatches = optional(number)
    max_dispatches_per_second = optional(number)
    
    # retry_config
    max_retry_attempts = optional(number)
    max_retry_duration = optional(string)
    max_retry_backoff = optional(string)
    min_retry_backoff = optional(string)
    max_doublings = optional(number)
  
    enqueuers = optional(list(string))

  }))
}

