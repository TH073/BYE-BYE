variable "credentials" {
  description = "Credentials path and file"
  type = string
  default = "credentials/credentials.json"
}
variable "environment" {
  description = "Environment label. Production or dev"
  type        = string
}
variable "project" {
  description = "Google project name"
  type        = string
}

variable "schemas" {
  type = map(object({
    type = optional(string)
    definition = optional(string)
  }))
}

variable "topics" {
  type = map(object({
    name = string
    schema_name = optional(string)
    pubsub_publisher = list(string)
    subscriptions = map(object({
      name = string
      pubsub_subscriber = list(string)
      ack_deadline_seconds = optional(number)
      message_retention_duration = optional(string)
      enable_exactly_once_delivery = optional(bool)
      enable_message_ordering = optional(bool)
      retain_acked_messages = optional(bool)
      
      # bloques
      expiration_policy_ttl = optional(string)

      bq_table = optional(string)
      bq_use_topic_schema = optional(string)
      bq_write_metadata = optional(string)
      bq_drop_unknown_fields = optional(string)

      dead_letter_topic = optional(string)
      max_delivery_attempts = optional(number)

      retry_minimum = optional(string)
      retry_maximum = optional(string)

      push_endpoint = optional(string)
      audience_token = optional(string)
      token_sa = optional(string)

    }))
  }))
}