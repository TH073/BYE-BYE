# creamos una var local que haga el link?

locals {
    publishers = flatten ([
        for topic in var.topics : {
                topic = topic.name
                publisher = topic.pubsub_publisher
        }
    if length(topic.pubsub_publisher) > 0
    ])

    subscribers = flatten ([
        for topic in var.topics:[
            for subscription in topic.subscriptions: {
                subscription = subscription.name
                subscriber = subscription.pubsub_subscriber
            }
        if length(subscription.pubsub_subscriber) > 0
        ]
    ])
}

resource "google_pubsub_topic_iam_binding" "pubsub_publisher" {
  project = var.project

  for_each = { for binding in local.publishers : "${binding.topic}_publisher" => binding }
  topic    = each.value.topic
  role     = "roles/pubsub.publisher"
  members  = each.value.publisher
  depends_on = [google_pubsub_topic.topic]
}

resource "google_pubsub_subscription_iam_binding" "pubsub_subscriber" {
    project = var.project

    for_each = { for binding in local.subscribers : "${binding.subscription}_subscriber" => binding }
  
    subscription = each.value.subscription
    role         = "roles/pubsub.subscriber"
    members = each.value.subscriber
    depends_on = [google_pubsub_subscription.subscription]
}