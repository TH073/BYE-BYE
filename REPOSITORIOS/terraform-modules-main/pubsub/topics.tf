locals {
    topic-subs = flatten ([
        for pair in var.topics:[
            for subs in pair.subscriptions: {
                topic = pair.name
                subscription = subs
}]
    ])
}

resource "google_pubsub_schema" "schemas" {
  project = var.project
  for_each = var.schemas

  name = each.key
  type = each.value.type
  definition = each.value.definition
  }

# Topics
resource "google_pubsub_topic" "topic" {
  project = var.project
  for_each = var.topics
  
  name = each.value.name
  dynamic schema_settings {
    for_each = each.value.schema_name == null ? [] : [1]
    
    content {
        schema = google_pubsub_schema.schemas["${each.value.schema_name}"].id
        encoding = "JSON"
    }
  }

  labels = {
    owner     = "developers"
    component = "topic"
    env   = var.environment
  }
  depends_on = [google_pubsub_schema.schemas]
}

# Subscriptions
resource "google_pubsub_subscription" "subscription" {
  project = var.project

  for_each = { for binding in local.topic-subs : "${binding.topic}_${binding.subscription.name}" => binding }
  name  = each.value.subscription.name
  topic = each.value.topic

  labels = {
    owner     = "developers"
    component = "subscription"
    env   = var.environment
  }

  ack_deadline_seconds = each.value.subscription.ack_deadline_seconds
  message_retention_duration = each.value.subscription.message_retention_duration
  enable_exactly_once_delivery = each.value.subscription.enable_exactly_once_delivery # defs to false 
  enable_message_ordering = each.value.subscription.enable_message_ordering# defs to false one to true
  retain_acked_messages = each.value.subscription.retain_acked_messages # defs to false

  dynamic expiration_policy {
    for_each = each.value.subscription.expiration_policy_ttl == null ? [] : [1]
    content {
        ttl = each.value.subscription.expiration_policy_ttl
    }
  }
  
  dynamic bigquery_config {
    for_each = each.value.subscription.bq_table != null ? [1] : []
    content {
      table = each.value.subscription.bq_table
      use_topic_schema = each.value.subscription.bq_use_topic_schema
      write_metadata = each.value.subscription.bq_write_metadata
      drop_unknown_fields = each.value.subscription.bq_drop_unknown_fields
    } 
  }

  dynamic dead_letter_policy {
    for_each = each.value.subscription.dead_letter_topic != null && each.value.subscription.max_delivery_attempts != null ? [1] : []
    content {
      dead_letter_topic = each.value.subscription.dead_letter_topic
      max_delivery_attempts = each.value.subscription.max_delivery_attempts
    }
  }

  dynamic retry_policy {
    for_each = each.value.subscription.retry_maximum != null || each.value.subscription.retry_minimum != null ? [1] : []
    content {
      minimum_backoff = each.value.subscription.retry_minimum
      maximum_backoff = each.value.subscription.retry_maximum
    }
  }

  dynamic push_config {
    for_each = each.value.subscription.push_endpoint != null ? [1] : []
    content {
      push_endpoint = each.value.subscription.push_endpoint
      dynamic oidc_token {
        for_each = each.value.subscription.audience_token != null || each.value.subscription.token_sa != null ? [1] : []
        content {
          service_account_email = each.value.subscription.token_sa
          audience = each.value.subscription.audience_token
        } 
      }
    }
  }
  depends_on = [ google_pubsub_topic.topic ]
}
