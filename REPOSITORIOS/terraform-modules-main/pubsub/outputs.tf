output "topics" {
    value = [for topic in google_pubsub_topic.topic : topic.id]
}