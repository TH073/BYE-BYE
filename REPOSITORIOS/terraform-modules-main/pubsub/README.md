Latest Version pubsub module: v1.0.0_pubsub

Allows creating the following resources:
- Topics and their corresponding permissions
- Subscriptions, relate them to topics and their corresponding permissions
- Schemas and also relate them to topics 

Example: 
```
project = "nbn23-competition-manager-dev"
environment = "dev"

# List of schemas

schemas = {
    "subscription_event" = {
        type = "AVRO"
        definition = "{\n \"type\": \"record\",\n \"name\": \"subscription_event\",\n \"fields\": [\n {\n \"name\": \"user\",\n \"type\": \"string\"\n },\n {\n \"name\": \"application\",\n \"type\": \"string\"\n },\n {\n \"name\": \"platform\",\n \"type\": \"string\"\n },\n {\n \"name\": \"event_type\",\n \"type\": \"string\"\n },\n {\n \"name\": \"premium_type\",\n \"type\": \"string\"\n },\n {\n \"name\": \"event_date\",\n \"type\": \"string\"\n },\n {\n \"name\": \"event_expiration_date\",\n \"type\": \"string\"\n }\n ]\n}"
    }
    "project" = {
        type = "AVRO"
        definition = "{\n \"type\": \"record\",\n \"name\": \"project\",\n \"fields\": [\n {\n \"name\": \"ID\",\n \"type\": \"string\"\n },\n {\n \"name\": \"projectKey\",\n \"type\": \"string\"\n },\n {\n \"name\": \"cmKey\",\n \"type\": \"string\"\n },\n {\n \"name\": \"name\",\n \"type\": \"string\"\n },\n {\n \"name\": \"updatedAt\",\n \"type\": \"string\"\n },\n {\n \"name\": \"accountManager\",\n \"type\": \"string\"\n },\n {\n \"name\": \"continent\",\n \"type\": \"string\"\n },\n {\n \"name\": \"country\",\n \"type\": \"string\"\n },\n {\n \"name\": \"region\",\n \"type\": \"string\"\n },\n {\n \"name\": \"countryCode\",\n \"type\": \"string\"\n },\n {\n \"name\": \"language\",\n \"type\": \"string\"\n },\n {\n \"name\": \"mainActivity\",\n \"type\": \"string\"\n } \n ]\n}\n"
    }
}

# List of topics
topics = {
    "sc_match_events_topic" = {
        name = "projects/nbn23-competition-manager-dev/topics/sc.match.events"
        
        # List of service accounts with publisher permissions
        pubsub_publisher = []

        # List of subscriptions related to the topic
        subscriptions = {
            "gcf-saveEvents-sc_match_events" = {
                name = "projects/nbn23-competition-manager-dev/subscriptions/gcf-saveEvents-sc_match_events"
                
                # List of service accounts with subscriber permissions
                pubsub_subscriber = [
                ]
                ack_deadline_seconds = 600
                message_retention_duration = "604800s"
                push_endpoint = "https://a025d1054ed4bc45c3cfc369615d8261-dot-l6dc0afdc007fb183-tp.appspot.com/_ah/push-handlers/pubsub/projects/nbn23-competition-manager-dev/topics/sc.match.events?pubsub_trigger=true"
            }
            "sc_match_events_save-events" = {
                name = "projects/nbn23-competition-manager-dev/subscriptions/sc_match_events_save-events"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                retry_minumun = 600
                retry_maximum = 10
                push_endpoint = "https://europe-west1-nbn23-competition-manager-dev.cloudfunctions.net/save-events"
                token_sa = "gcf-save-events@nbn23-competition-manager-dev.iam.gserviceaccount.com"
            }
             "save_subcription_events" = {
                name = "save.subcription_events"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                bq_table = "nbn23-competition-manager-dev.users.subscription_events"
                bq_use_topic_schema = true
                bq_drop_unknown_fields = true
                retry_maximum = "600s"
                retry_minimum = "10s"
            }
        }
    }
