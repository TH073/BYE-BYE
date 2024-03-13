#tf_modules_tag = 1.0.0
project = "nbn23-competition-manager-dev"
environment = "dev"
schemas = {
    "project" = {
        type = "AVRO"
        definition = "{\n \"type\": \"record\",\n \"name\": \"project\",\n \"fields\": [\n {\n \"name\": \"ID\",\n \"type\": \"string\"\n },\n {\n \"name\": \"projectKey\",\n \"type\": \"string\"\n },\n {\n \"name\": \"cmKey\",\n \"type\": \"string\"\n },\n {\n \"name\":\"name\",\n \"type\": \"string\"\n },\n {\n \"name\": \"updatedAt\",\n \"type\": \"string\"\n },\n {\n \"name\": \"accountManager\",\n \"type\": \"string\"\n },\n {\n \"name\": \"continent\",\n \"type\": \"string\"\n },\n {\n \"name\": \"country\",\n \"type\": \"string\"\n },\n {\n \"name\": \"region\",\n \"type\": \"string\"\n },\n {\n \"name\": \"countryCode\",\n \"type\": \"string\"\n },\n {\n \"name\": \"language\",\n \"type\": \"string\"\n },\n {\n \"name\": \"mainActivity\",\n \"type\": \"string\"\n } \n ]\n}\n"
    }
    "subscription_event" = {
        type = "AVRO"
        definition = "{\n \"type\": \"record\",\n \"name\": \"subscription_event\",\n \"fields\": [\n {\n \"name\": \"user\",\n \"type\": \"string\"\n },\n {\n \"name\": \"application\",\n \"type\": \"string\"\n },\n {\n \"name\": \"platform\",\n \"type\": \"string\"\n },\n {\n \"name\": \"event_type\",\n \"type\": \"string\"\n },\n {\n \"name\": \"premium_type\",\n \"type\": \"string\"\n },\n {\n \"name\": \"event_date\",\n \"type\": \"string\"\n },\n {\n \"name\": \"event_expiration_date\",\n \"type\": \"string\"\n }\n ]\n}"
    }
}

topics = {
    "sc_match_events_topic" = {
        name = "sc.match.events"
        pubsub_publisher = []
        subscriptions = {
            "gcf-saveEvents-sc_match_events" = {
                name = "gcf-saveEvents-sc.match.events"
                pubsub_subscriber = [
                ]
                ack_deadline_seconds = 600
                message_retention_duration = "604800s"
                push_endpoint = "https://a025d1054ed4bc45c3cfc369615d8261-dot-l6dc0afdc007fb183-tp.appspot.com/_ah/push-handlers/pubsub/projects/nbn23-competition-manager-dev/topics/sc.match.events?pubsub_trigger=true"
            }
            "sc_match_events_save-events" = {
                name = "sc.match.events.save-events"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://europe-west1-nbn23-competition-manager-dev.cloudfunctions.net/save-events"
                token_sa = "gcf-save-events@nbn23-competition-manager-dev.iam.gserviceaccount.com"
            }
        }
    }
    "intg_indalweb_topic" = {
        name = "intg.indalweb"
        pubsub_publisher = []
        subscriptions = {
            "indalweb" = {
                name = "indalweb"
                pubsub_subscriber = [
                ]
                ack_deadline_seconds = 60
                message_retention_duration = "604800s"
            }
        }
    }
    "sc_match_postprocess_topic" = {
        name = "sc.match.postprocess"
        pubsub_publisher = []
        subscriptions = {
            "gcf-matchResults-europe-west1-sc_match_postprocess" = {
                name = "gcf-matchResults-europe-west1-sc.match.postprocess"
                pubsub_subscriber = [
                ]
                ack_deadline_seconds = 600
                message_retention_duration = "604800s"
                push_endpoint = "https://456262a0426943887f2eeda7058e6d2c-dot-l6dc0afdc007fb183-tp.appspot.com/_ah/push-handlers/pubsub/projects/nbn23-competition-manager-dev/topics/sc.match.postprocess?pubsub_trigger=true"
            }
        }
    }
    "cache_delete_topic" = {
        name = "cache.delete"
        pubsub_publisher = []
        subscriptions = {
        }
    }
    "sc_match_SOM_topic" = {
        name = "sc.match.SOM"
        pubsub_publisher = []
        subscriptions = {
            "sc_match_som-notify-started-matches" = {
                name = "sc.match.som-notify-started-matches"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://notify-match-startup-kgju3lmrya-ew.a.run.app"
                token_sa = "gcf-notify-match-startup@nbn23-competition-manager-dev.iam.gserviceaccount.com"
            }
        }
    }
    "team_DataRequested_topic" = {
        name = "team.DataRequested"
        pubsub_publisher = []
        subscriptions = {
            "team_DataRequested" = {
                name = "team.DataRequested"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                push_endpoint = "https://team-sync-kgju3lmrya-ew.a.run.app/sync"
            }
        }
    }
    "sc_match_result_topic" = {
        name = "sc.match.result"
        pubsub_publisher = []
        subscriptions = {
            "gcf-requestScorecardPdfTopic-europe-west1-sc_match_result" = {
                name = "gcf-requestScorecardPdfTopic-europe-west1-sc.match.result"
                pubsub_subscriber = [
                ]
                ack_deadline_seconds = 600
                message_retention_duration = "604800s"
                push_endpoint = "https://9fd210d17db6700b06196e890010abdc-dot-l6dc0afdc007fb183-tp.appspot.com/_ah/push-handlers/pubsub/projects/nbn23-competition-manager-dev/topics/sc.match.result?pubsub_trigger=true"
            }
        }
    }
    "match_DataUpdated_topic" = {
        name = "match.DataUpdated"
        pubsub_publisher = []
        subscriptions = {
            "match_DataUpdated" = {
                name = "match.DataUpdated"
                pubsub_subscriber = [
                ]
                ack_deadline_seconds = 60
                message_retention_duration = "604800s"
                push_endpoint = "https://match-sync-kgju3lmrya-ew.a.run.app/sync"
            }
        }
    }
    "player_DataRequested_topic" = {
        name = "player.DataRequested"
        pubsub_publisher = []
        subscriptions = {
        }
    }
    "gateway_schemaChange_topic" = {
        name = "gateway.schemaChange"
        pubsub_publisher = []
        subscriptions = {
            "gateway_schemaChange" = {
                name = "gateway.schemaChange"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
            }
        }
    }
    "provider_syncRequested_topic" = {
        name = "provider.syncRequested"
        pubsub_publisher = []
        subscriptions = {
            "provider_syncRequested" = {
                name = "provider.syncRequested"
                pubsub_subscriber = [
                ]
                ack_deadline_seconds = 30
                message_retention_duration = "604800s"
                push_endpoint = "https://provider-sync-kgju3lmrya-ew.a.run.app/syncMessage"
            }
        }
    }
    "check_Subscriptions_topic" = {
        name = "check.Subscriptions"
        pubsub_publisher = []
        subscriptions = {
            "gcf-checkSubscription-europe-west1-check_Subscriptions" = {
                name = "gcf-checkSubscription-europe-west1-check.Subscriptions"
                pubsub_subscriber = [
                ]
                ack_deadline_seconds = 600
                message_retention_duration = "604800s"
                push_endpoint = "https://2111b2f7a40459291d6cb387f340014c-dot-l6dc0afdc007fb183-tp.appspot.com/_ah/push-handlers/pubsub/projects/nbn23-competition-manager-dev/topics/check.Subscriptions?pubsub_trigger=true"
            }
        }
    }
    "match_audit_topic" = {
        name = "match.audit"
        pubsub_publisher = []
        subscriptions = {
            "gcf-saveFileStorage-europe-west1-match_audit" = {
                name = "gcf-saveFileStorage-europe-west1-match.audit"
                pubsub_subscriber = [
                ]
                ack_deadline_seconds = 600
                message_retention_duration = "604800s"
                push_endpoint = "https://9f151c63d2b49eefa10a8fe87abda804-dot-l6dc0afdc007fb183-tp.appspot.com/_ah/push-handlers/pubsub/projects/nbn23-competition-manager-dev/topics/match.audit?pubsub_trigger=true"
            }
        }
    }
    "save_subscription_events_topic" = {
        name = "save.subscription_events"
          schema_name = "subscription_event"
        pubsub_publisher = []
        subscriptions = {
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
    "match_dataStored_topic" = {
        name = "match.dataStored"
        pubsub_publisher = []
        subscriptions = {
        }
    }
    "project_DataRequested_topic" = {
        name = "project.DataRequested"
          schema_name = "project"
        pubsub_publisher = []
        subscriptions = {
            "project_DataRequested-sub" = {
                name = "project.DataRequested-sub"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                bq_table = "nbn23-competition-manager-dev.closed_matches.projects"
                bq_use_topic_schema = true
                bq_drop_unknown_fields = true
            }
        }
    }
    "nt_storage_topic" = {
        name = "nt.storage"
        pubsub_publisher = []
        subscriptions = {
            "nt_storage_sub" = {
                name = "nt.storage.sub"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
            }
        }
    }
    "rm_5049_topic" = {
        name = "rm.5049"
        pubsub_publisher = []
        subscriptions = {
            "rm_5049_sub" = {
                name = "rm.5049.sub"
                pubsub_subscriber = [
                ]
                ack_deadline_seconds = 600
                message_retention_duration = "600s"
                enable_exactly_once_delivery = true
                enable_message_ordering = true
            }
        }
    }
    "competition_dataUpdated_topic" = {
        name = "competition.dataUpdated"
        pubsub_publisher = []
        subscriptions = {
        }
    }
    "match_actionsStored_topic" = {
        name = "match.actionsStored"
        pubsub_publisher = []
        subscriptions = {
            "match_actionsStored-update-match-status" = {
                name = "match.actionsStored-update-match-status"
                pubsub_subscriber = [
                ]
                message_retention_duration = "28800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://update-match-status-kgju3lmrya-ew.a.run.app"
                token_sa = "gcf-update-match-status@nbn23-competition-manager-dev.iam.gserviceaccount.com"
                audience_token = "https://update-match-status-kgju3lmrya-ew.a.run.app"
            }
            "match_actionsStored-update-match-stats" = {
                name = "match.actionsStored-update-match-stats"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://update-match-stats-kgju3lmrya-ew.a.run.app"
                token_sa = "gcf-update-match-stats@nbn23-competition-manager-dev.iam.gserviceaccount.com"
                audience_token = "https://update-match-stats-kgju3lmrya-ew.a.run.app"
            }
            "match_actionsStored-update-match-actor-stats" = {
                name = "match.actionsStored-update-match-actor-stats"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://update-match-actor-stats-kgju3lmrya-ew.a.run.app"
                token_sa = "gcf-update-match-actor-stats@nbn23-competition-manager-dev.iam.gserviceaccount.com"
                audience_token = "https://update-match-actor-stats-kgju3lmrya-ew.a.run.app"
            }
        }
    }
    "match_eventsStored_topic" = {
        name = "match.eventsStored"
        pubsub_publisher = []
        subscriptions = {
            "match_eventsStored-update-match-status" = {
                name = "match.eventsStored-update-match-status"
                pubsub_subscriber = [
                ]
                message_retention_duration = "28800s"
                retain_acked_messages = true
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://update-match-status-kgju3lmrya-ew.a.run.app"
                token_sa = "gcf-update-match-status@nbn23-competition-manager-dev.iam.gserviceaccount.com"
                audience_token = "https://update-match-status-kgju3lmrya-ew.a.run.app"
            }
        }
    }
    "match_eventsStored_close_topic" = {
        name = "match.eventsStored.close"
        pubsub_publisher = []
        subscriptions = {
            "match_eventsStored_close" = {
                name = "match.eventsStored.close"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://update-match-scores-kgju3lmrya-ew.a.run.app"
                token_sa = "gcf-update-match-scores@nbn23-competition-manager-dev.iam.gserviceaccount.com"
                audience_token = "https://update-match-scores-kgju3lmrya-ew.a.run.app"
            }
            "match_eventsStored_close-update-match-period-stats" = {
                name = "match.eventsStored.close-update-match-period-stats"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://update-match-period-stats-kgju3lmrya-ew.a.run.app"
                token_sa = "gcf-update-match-period-stats@nbn23-competition-manager-dev.iam.gserviceaccount.com"
                audience_token = "https://update-match-period-stats-kgju3lmrya-ew.a.run.app"
            }
        }
    }
    "match_eventsStored_eoq_topic" = {
        name = "match.eventsStored.eoq"
        pubsub_publisher = []
        subscriptions = {
            "match_eventsStored_eoq-update-match-scores" = {
                name = "match.eventsStored.eoq-update-match-scores"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://update-match-scores-kgju3lmrya-ew.a.run.app"
                token_sa = "gcf-update-match-scores@nbn23-competition-manager-dev.iam.gserviceaccount.com"
                audience_token = "https://update-match-scores-kgju3lmrya-ew.a.run.app"
            }
            "match_eventsStored_eoq-update-match-period-stats" = {
                name = "match.eventsStored.eoq-update-match-period-stats"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://update-match-period-stats-kgju3lmrya-ew.a.run.app"
                token_sa = "gcf-update-match-period-stats@nbn23-competition-manager-dev.iam.gserviceaccount.com"
                audience_token = "https://update-match-period-stats-kgju3lmrya-ew.a.run.app"
            }
        }
    }
    "match_eventsStored_eom_topic" = {
        name = "match.eventsStored.eom"
        pubsub_publisher = []
        subscriptions = {
            "match_eventsStored_eom-update-match-scores" = {
                name = "match.eventsStored.eom-update-match-scores"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://update-match-scores-kgju3lmrya-ew.a.run.app"
                token_sa = "gcf-update-match-scores@nbn23-competition-manager-dev.iam.gserviceaccount.com"
                audience_token = "https://update-match-scores-kgju3lmrya-ew.a.run.app"
            }
            "match_eventsStored_eom-update-match-period-stats" = {
                name = "match.eventsStored.eom-update-match-period-stats"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://update-match-period-stats-kgju3lmrya-ew.a.run.app"
                token_sa = "gcf-update-match-period-stats@nbn23-competition-manager-dev.iam.gserviceaccount.com"
                audience_token = "https://update-match-period-stats-kgju3lmrya-ew.a.run.app"
            }
            "match_eventsStored_eom-update-match-actor-stats" = {
                name = "match.eventsStored.eom-update-match-actor-stats"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://update-match-actor-stats-kgju3lmrya-ew.a.run.app"
                token_sa = "gcf-update-match-actor-stats@nbn23-competition-manager-dev.iam.gserviceaccount.com"
                audience_token = "https://update-match-actor-stats-kgju3lmrya-ew.a.run.app"
            }
        }
    }
    "match_statusStored_closed_topic" = {
        name = "match.statusStored.closed"
        pubsub_publisher = []
        subscriptions = {
            "match_statusStored_closed-closed-games-exporter" = {
                name = "match.statusStored.closed-closed-games-exporter"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://closed-games-exporter-kgju3lmrya-ew.a.run.app/eventargTrigger/match"
                token_sa = "gcr-closed-games-exporter@nbn23-competition-manager-dev.iam.gserviceaccount.com"
            }
            "match_statusStored_closed-update-group-stats" = {
                name = "match.statusStored.closed-update-group-stats"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://update-group-stats-kgju3lmrya-ew.a.run.app"
                token_sa = "gcf-update-group-stats@nbn23-competition-manager-dev.iam.gserviceaccount.com"
                audience_token = "https://update-group-stats-kgju3lmrya-ew.a.run.app"
            }
            "match_statusStored_closed-update-match-lineup-stats" = {
                name = "match.statusStored.closed-update-match-lineup-stats"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://update-match-lineup-stats-kgju3lmrya-ew.a.run.app"
                token_sa = "gcf-update-match-lineup-stats@nbn23-competition-manager-dev.iam.gserviceaccount.com"
            }
            "match_statusStored_closed-notify-closed-matches" = {
                name = "match.statusStored.closed-notify-closed-matches"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://notify-closed-matches-kgju3lmrya-ew.a.run.app"
                token_sa = "gcf-notify-closed-matches@nbn23-competition-manager-dev.iam.gserviceaccount.com"
            }
            "match_statusStored_closed-update-match-team-stats" = {
                name = "match.statusStored.closed-update-match-team-stats"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://update-match-team-stats-kgju3lmrya-ew.a.run.app/?pubSubMode=true"
                token_sa = "gcf-update-match-team-stats@nbn23-competition-manager-dev.iam.gserviceaccount.com"
            }
        }
    }
    "match_actionsStored_points_topic" = {
        name = "match.actionsStored.points"
        pubsub_publisher = []
        subscriptions = {
            "match_actionsStored_points-update-match-scores" = {
                name = "match.actionsStored.points-update-match-scores"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://update-match-scores-kgju3lmrya-ew.a.run.app"
                token_sa = "gcf-update-match-scores@nbn23-competition-manager-dev.iam.gserviceaccount.com"
                audience_token = "https://update-match-scores-kgju3lmrya-ew.a.run.app"
            }
        }
    }
    "competition_dataStored_topic" = {
        name = "competition.dataStored"
        pubsub_publisher = []
        subscriptions = {
            "competition_dataStored-check-roundless-matches" = {
                name = "competition.dataStored-check-roundless-matches"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://check-roundless-matches-kgju3lmrya-ew.a.run.app/"
                token_sa = "gcf-check-roundless-matches@nbn23-competition-manager-dev.iam.gserviceaccount.com"
            }
            "competition_dataStored-search-sync" = {
                name = "competition.dataStored-search-sync"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://search-sync-kgju3lmrya-ew.a.run.app/competitions"
                token_sa = "gcr-search-sync@nbn23-competition-manager-dev.iam.gserviceaccount.com"
            }
        }
    }
    "group_statsStored_topic" = {
        name = "group.statsStored"
        pubsub_publisher = []
        subscriptions = {
            "group_statsStored-update-competition-stats" = {
                name = "group.statsStored-update-competition-stats"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://update-competition-stats-kgju3lmrya-ew.a.run.app"
                token_sa = "gcf-update-competition-stats@nbn23-competition-manager-dev.iam.gserviceaccount.com"
                audience_token = "https://update-competition-stats-kgju3lmrya-ew.a.run.app"
            }
        }
    }
    "group_dataUpdated_topic" = {
        name = "group.dataUpdated"
        pubsub_publisher = []
        subscriptions = {
        }
    }
    "competition_calendarUpdated_topic" = {
        name = "competition.calendarUpdated"
        pubsub_publisher = []
        subscriptions = {
            "competition_calendarUpdated-sync-last-next-matches" = {
                name = "competition.calendarUpdated-sync-last-next-matches"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://sync-last-next-matches-kgju3lmrya-ew.a.run.app/syncOnCalendarUpdated"
                token_sa = "gcr-sync-last-next-matches@nbn23-competition-manager-dev.iam.gserviceaccount.com"
            }
        }
    }
    "group_dataStored_topic" = {
        name = "group.dataStored"
        pubsub_publisher = []
        subscriptions = {
            "group_dataStored-check-calendars" = {
                name = "group.dataStored-check-calendars"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://check-calendars-kgju3lmrya-ew.a.run.app/"
                token_sa = "gcf-check-calendars@nbn23-competition-manager-dev.iam.gserviceaccount.com"
            }
        }
    }
    "play-store_subscriptions_topic" = {
        name = "play-store.subscriptions"
        pubsub_publisher = []
        subscriptions = {
        }
    }
    "match_actionsDeleted_points_topic" = {
        name = "match.actionsDeleted.points"
        pubsub_publisher = []
        subscriptions = {
            "match_actionsDeleted_points-update-match-scores" = {
                name = "match.actionsDeleted.points-update-match-scores"
                pubsub_subscriber = [
                ]
                ack_deadline_seconds = 60
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://update-match-scores-kgju3lmrya-ew.a.run.app"
                token_sa = "gcf-update-match-scores@nbn23-competition-manager-dev.iam.gserviceaccount.com"
                audience_token = "https://update-match-scores-kgju3lmrya-ew.a.run.app"
            }
        }
    }
    "match_actionsDeleted_topic" = {
        name = "match.actionsDeleted"
        pubsub_publisher = []
        subscriptions = {
            "match_actionsDeleted-update-match-actor-stats" = {
                name = "match.actionsDeleted-update-match-actor-stats"
                pubsub_subscriber = [
                ]
                ack_deadline_seconds = 60
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://update-match-actor-stats-kgju3lmrya-ew.a.run.app"
                token_sa = "gcf-update-match-actor-stats@nbn23-competition-manager-dev.iam.gserviceaccount.com"
                audience_token = "https://update-match-actor-stats-kgju3lmrya-ew.a.run.app"
            }
            "match_actionsDeleted-update-match-stats" = {
                name = "match.actionsDeleted-update-match-stats"
                pubsub_subscriber = [
                ]
                ack_deadline_seconds = 60
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://update-match-stats-kgju3lmrya-ew.a.run.app"
                token_sa = "gcf-update-match-stats@nbn23-competition-manager-dev.iam.gserviceaccount.com"
                audience_token = "https://update-match-stats-kgju3lmrya-ew.a.run.app"
            }
            "match_actionsDeleted-update-match-status" = {
                name = "match.actionsDeleted-update-match-status"
                pubsub_subscriber = [
                ]
                message_retention_duration = "28800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://update-match-status-kgju3lmrya-ew.a.run.app"
                token_sa = "gcf-update-match-status@nbn23-competition-manager-dev.iam.gserviceaccount.com"
            }
        }
    }
    "match_courtUpdated_topic" = {
        name = "match.courtUpdated"
        pubsub_publisher = []
        subscriptions = {
            "match_courtUpdated-notify-court-updates" = {
                name = "match.courtUpdated-notify-court-updates"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://notify-court-updates-kgju3lmrya-ew.a.run.app"
                token_sa = "gcf-notify-court-updates@nbn23-competition-manager-dev.iam.gserviceaccount.com"
                audience_token = "https://notify-court-updates-kgju3lmrya-ew.a.run.app"
            }
        }
    }
    "group_playerStatsStored_topic" = {
        name = "group.playerStatsStored"
        pubsub_publisher = []
        subscriptions = {
            "group_playerStatsStored-update-competition-stats" = {
                name = "group.playerStatsStored-update-competition-stats"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://update-competition-stats-kgju3lmrya-ew.a.run.app"
                token_sa = "gcf-update-competition-stats@nbn23-competition-manager-dev.iam.gserviceaccount.com"
            }
        }
    }
    "match_teamStatsStored_topic" = {
        name = "match.teamStatsStored"
        pubsub_publisher = []
        subscriptions = {
            "match_teamStatsStored-update-group-team-stats" = {
                name = "match.teamStatsStored-update-group-team-stats"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://update-group-team-stats-kgju3lmrya-ew.a.run.app"
                token_sa = "gcf-update-group-team-stats@nbn23-competition-manager-dev.iam.gserviceaccount.com"
            }
        }
    }
    "group_teamStatsStored_topic" = {
        name = "group.teamStatsStored"
        pubsub_publisher = []
        subscriptions = {
            "group_teamStatsStored-update-competition-team-stats" = {
                name = "group.teamStatsStored-update-competition-team-stats"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://update-competition-team-stats-kgju3lmrya-ew.a.run.app"
                token_sa = "gcf-update-comp-team-stats@nbn23-competition-manager-dev.iam.gserviceaccount.com"
            }
        }
    }
    "team_dataStored_topic" = {
        name = "team.dataStored"
        pubsub_publisher = []
        subscriptions = {
            "team_dataStored-search-sync" = {
                name = "team.dataStored-search-sync"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://search-sync-kgju3lmrya-ew.a.run.app/teams"
                token_sa = "gcr-search-sync@nbn23-competition-manager-dev.iam.gserviceaccount.com"
            }
        }
    }
    "player_dataStored_topic" = {
        name = "player.dataStored"
        pubsub_publisher = []
        subscriptions = {
            "player_dataStored-search-sync" = {
                name = "player.dataStored-search-sync"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://search-sync-kgju3lmrya-ew.a.run.app/players"
                token_sa = "gcr-search-sync@nbn23-competition-manager-dev.iam.gserviceaccount.com"
            }
        }
    }
    "group_lineupStatsStored_topic" = {
        name = "group.lineupStatsStored"
        pubsub_publisher = []
        subscriptions = {
            "group_lineupStatsStored-update-competition-lineup-stats" = {
                name = "group.lineupStatsStored-update-competition-lineup-stats"
                pubsub_subscriber = [
                ]
                ack_deadline_seconds = 60
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://update-competition-lineup-stats-kgju3lmrya-ew.a.run.app/?pubSubMode=true"
                token_sa = "gcf-update-comp-lineup-stats@nbn23-competition-manager-dev.iam.gserviceaccount.com"
            }
        }
    }
    "match_lineupStatsStored_topic" = {
        name = "match.lineupStatsStored"
        pubsub_publisher = []
        subscriptions = {
            "match_lineupStatsStored-update-group-lineup-stats" = {
                name = "match.lineupStatsStored-update-group-lineup-stats"
                pubsub_subscriber = [
                ]
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://update-group-lineup-stats-kgju3lmrya-ew.a.run.app/?pubSubMode=true"
                token_sa = "gcf-update-group-lineup-stats@nbn23-competition-manager-dev.iam.gserviceaccount.com"
            }
        }
    }
    "generate-chronicle_topic" = {
        name = "generate-chronicle"
        pubsub_publisher = []
        subscriptions = {
            "eventarc-europe-west1-generate-chronicle-762900-sub-388" = {
                name = "eventarc-europe-west1-generate-chronicle-762900-sub-388"
                pubsub_subscriber = [
                ]
                ack_deadline_seconds = 600
                message_retention_duration = "86400s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://generate-chronicle-kgju3lmrya-ew.a.run.app?__GCP_CloudEventsMode=CUSTOM_PUBSUB_projects%2Fnbn23-competition-manager-dev%2Ftopics%2Fgenerate-chronicle"
                token_sa = "functions-match-chronicles@nbn23-competition-manager-dev.iam.gserviceaccount.com"
                audience_token = "https://generate-chronicle-kgju3lmrya-ew.a.run.app"
            }
        }
    }
    "prepare-prematch-chronicle_topic" = {
        name = "prepare-prematch-chronicle"
        pubsub_publisher = []
        subscriptions = {
            "eventarc-europe-west1-prepare-prematch-chronicle-582577-sub-135" = {
                name = "eventarc-europe-west1-prepare-prematch-chronicle-582577-sub-135"
                pubsub_subscriber = [
                ]
                ack_deadline_seconds = 600
                message_retention_duration = "86400s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://prepare-prematch-chronicle-kgju3lmrya-ew.a.run.app?__GCP_CloudEventsMode=CUSTOM_PUBSUB_projects%2Fnbn23-competition-manager-dev%2Ftopics%2Fprepare-prematch-chronicle"
                token_sa = "functions-match-chronicles@nbn23-competition-manager-dev.iam.gserviceaccount.com"
                audience_token = "https://prepare-prematch-chronicle-kgju3lmrya-ew.a.run.app"
            }
        }
    }
    "prepare-postmatch-chronicle_topic" = {
        name = "prepare-postmatch-chronicle"
        pubsub_publisher = []
        subscriptions = {
            "eventarc-europe-west1-prepare-postmatch-chronicle-971841-sub-753" = {
                name = "eventarc-europe-west1-prepare-postmatch-chronicle-971841-sub-753"
                pubsub_subscriber = [
                ]
                ack_deadline_seconds = 600
                message_retention_duration = "86400s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://prepare-postmatch-chronicle-kgju3lmrya-ew.a.run.app?__GCP_CloudEventsMode=CUSTOM_PUBSUB_projects%2Fnbn23-competition-manager-dev%2Ftopics%2Fprepare-postmatch-chronicle"
                token_sa = "functions-match-chronicles@nbn23-competition-manager-dev.iam.gserviceaccount.com"
                audience_token = "https://prepare-postmatch-chronicle-kgju3lmrya-ew.a.run.app"
            }
        }
    }
    "store-chronicle_topic" = {
        name = "store-chronicle"
        pubsub_publisher = []
        subscriptions = {
            "eventarc-europe-west1-store-chronicle-865721-sub-222" = {
                name = "eventarc-europe-west1-store-chronicle-865721-sub-222"
                pubsub_subscriber = [
                ]
                ack_deadline_seconds = 600
                message_retention_duration = "86400s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://store-chronicle-kgju3lmrya-ew.a.run.app?__GCP_CloudEventsMode=CUSTOM_PUBSUB_projects%2Fnbn23-competition-manager-dev%2Ftopics%2Fstore-chronicle"
                token_sa = "functions-match-chronicles@nbn23-competition-manager-dev.iam.gserviceaccount.com"
                audience_token = "https://store-chronicle-kgju3lmrya-ew.a.run.app"
            }
        }
    }
    "request-postmatch-chronicle_topic" = {
        name = "request-postmatch-chronicle"
        pubsub_publisher = []
        subscriptions = {
            "eventarc-europe-west1-request-postmatch-chronicle-936265-sub-679" = {
                name = "eventarc-europe-west1-request-postmatch-chronicle-936265-sub-679"
                pubsub_subscriber = [
                ]
                ack_deadline_seconds = 600
                message_retention_duration = "86400s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://request-postmatch-chronicle-kgju3lmrya-ew.a.run.app?__GCP_CloudEventsMode=CUSTOM_PUBSUB_projects%2Fnbn23-competition-manager-dev%2Ftopics%2Frequest-postmatch-chronicle"
                token_sa = "functions-match-chronicles@nbn23-competition-manager-dev.iam.gserviceaccount.com"
                audience_token = "https://request-postmatch-chronicle-kgju3lmrya-ew.a.run.app"
            }
        }
    }
    "request-prematch-chronicle_topic" = {
        name = "request-prematch-chronicle"
        pubsub_publisher = []
        subscriptions = {
            "eventarc-europe-west1-request-prematch-chronicle-738661-sub-570" = {
                name = "eventarc-europe-west1-request-prematch-chronicle-738661-sub-570"
                pubsub_subscriber = [
                ]
                ack_deadline_seconds = 600
                message_retention_duration = "86400s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://request-prematch-chronicle-kgju3lmrya-ew.a.run.app?__GCP_CloudEventsMode=CUSTOM_PUBSUB_projects%2Fnbn23-competition-manager-dev%2Ftopics%2Frequest-prematch-chronicle"
                token_sa = "functions-match-chronicles@nbn23-competition-manager-dev.iam.gserviceaccount.com"
                audience_token = "https://request-prematch-chronicle-kgju3lmrya-ew.a.run.app"
            }
        }
    }
    "match_chronicleStored_topic" = {
        name = "match.chronicleStored"
        pubsub_publisher = []
        subscriptions = {
            "match_chronicleStored-notify-chronicle-generation" = {
                name = "match.chronicleStored-notify-chronicle-generation"
                pubsub_subscriber = [
                ]
                ack_deadline_seconds = 60
                message_retention_duration = "604800s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://notify-chronicle-generation-kgju3lmrya-ew.a.run.app"
                token_sa = "gcf-notify-chron-generation@nbn23-competition-manager-dev.iam.gserviceaccount.com"
            }
        }
    }
    "pubSub_messageUndelivered_topic" = {
        name = "pubSub.messageUndelivered"
        pubsub_publisher = []
        subscriptions = {
            "pubSub_messageUndelivered-stored-dead-letter" = {
                name = "pubSub.messageUndelivered-stored-dead-letter"
                pubsub_subscriber = [
                ]
                ack_deadline_seconds = 60
                message_retention_duration = "600s"
                retry_maximum = "600s"
                retry_minimum = "10s"
                push_endpoint = "https://store-dead-letter-kgju3lmrya-ew.a.run.app"
                token_sa = "gcf-store-dead-letter@nbn23-competition-manager-dev.iam.gserviceaccount.com"
            }
        }
    }
}
