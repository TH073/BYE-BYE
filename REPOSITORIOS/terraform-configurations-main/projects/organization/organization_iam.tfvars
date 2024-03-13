#tf_modules_tag = 1.0.0

groups = {
    "devops" = {
        roles = [
            "roles/owner",
            "roles/bigquery.metadataViewer"
        ]
    }
    "management" = {
        roles = [
            "roles/billing.admin",
            "roles/resourcemanager.projectIamAdmin",
            "roles/serviceusage.serviceUsageAdmin",
            "roles/viewer"
        ]
    }
    "browser" = {
        roles = [
            "roles/browser"
        ]
    }
}

custom_roles = {
    "GCSViewerAndObjectUser" = {
        title = "GCS Viewer and Object User"
        description = "Allows listing buckets, create and delete objects."
        permissions = [
            "storage.buckets.getIamPolicy",
            "storage.buckets.list",
            "storage.objects.create",
            "storage.objects.delete",
            "storage.objects.get",
            "storage.objects.getIamPolicy",
            "storage.objects.list",
            "storage.objects.update"
        ]
    }
    "CustomBucketsList" = {
        title = "Custom Buckets List"
        description = "Allows listing buckets inside a project"
        permissions = [
            "storage.buckets.list"
        ]
    }
    
    "FirebaseMarketingManager" = {
        title = "Firebase Marketing Manager"
        description = "Custom role created for Marketing department. Disgregate when possible"
        permissions = [
            "apikeys.keys.create",
            "apikeys.keys.delete",
            "apikeys.keys.get",
            "apikeys.keys.getKeyString",
            "apikeys.keys.list",
            "apikeys.keys.lookup",
            "apikeys.keys.undelete",
            "apikeys.keys.update",
            "firebase.billingPlans.get",
            "firebase.clients.create",
            "firebase.clients.delete",
            "firebase.clients.get",
            "firebase.clients.list",
            "firebase.clients.undelete",
            "firebase.clients.update",
            "firebase.links.list",
            "firebase.playLinks.get",
            "firebase.playLinks.list",
            "firebase.projects.get",
            "firebase.projects.update",
            "firebaseabt.experiments.create",
            "firebaseabt.experiments.delete",
            "firebaseabt.experiments.get",
            "firebaseabt.experiments.list",
            "firebaseabt.experiments.update",
            "firebaseabt.projectmetadata.get",
            "firebaseanalytics.resources.googleAnalyticsEdit",
            "firebaseanalytics.resources.googleAnalyticsReadAndAnalyze",
            "firebaseappcheck.appAttestConfig.get",
            "firebaseappcheck.appAttestConfig.update",
            "firebaseappcheck.debugTokens.get",
            "firebaseappcheck.debugTokens.update",
            "firebaseappcheck.deviceCheckConfig.get",
            "firebaseappcheck.deviceCheckConfig.update",
            "firebaseappcheck.playIntegrityConfig.get",
            "firebaseappcheck.playIntegrityConfig.update",
            "firebaseappcheck.recaptchaEnterpriseConfig.get",
            "firebaseappcheck.recaptchaEnterpriseConfig.update",
            "firebaseappcheck.recaptchaV3Config.get",
            "firebaseappcheck.safetyNetConfig.get",
            "firebaseappcheck.safetyNetConfig.update",
            "firebaseappcheck.services.get",
            "firebaseappcheck.services.update",
            "firebaseappdistro.groups.list",
            "firebaseappdistro.groups.update",
            "firebaseappdistro.releases.list",
            "firebaseappdistro.releases.update",
            "firebaseappdistro.testers.list",
            "firebaseappdistro.testers.update",
            "firebaseauth.configs.create",
            "firebaseauth.configs.get",
            "firebaseauth.configs.getHashConfig",
            "firebaseauth.configs.getSecret",
            "firebaseauth.configs.update",
            "firebaseauth.users.create",
            "firebaseauth.users.delete",
            "firebaseauth.users.get",
            "firebaseauth.users.sendEmail",
            "firebaseauth.users.update",
            "firebasecloudmessaging.messages.create",
            "firebasecrash.issues.update",
            "firebasecrash.reports.get",
            "firebasecrashlytics.config.get",
            "firebasecrashlytics.config.update",
            "firebasecrashlytics.data.get",
            "firebasecrashlytics.issues.get",
            "firebasecrashlytics.issues.list",
            "firebasecrashlytics.issues.update",
            "firebasecrashlytics.sessions.get",
            "firebasedatabase.instances.create",
            "firebasedatabase.instances.delete",
            "firebasedatabase.instances.get",
            "firebasedatabase.instances.list",
            "firebasedatabase.instances.update",
            "firebasedynamiclinks.destinations.list",
            "firebasedynamiclinks.destinations.update",
            "firebasedynamiclinks.domains.create",
            "firebasedynamiclinks.domains.delete",
            "firebasedynamiclinks.domains.get",
            "firebasedynamiclinks.domains.list",
            "firebasedynamiclinks.domains.update",
            "firebasedynamiclinks.links.create",
            "firebasedynamiclinks.links.get",
            "firebasedynamiclinks.links.list",
            "firebasedynamiclinks.links.update",
            "firebasedynamiclinks.stats.get",
            "firebaseextensions.configs.list",
            "firebaseextensionspublisher.extensions.create",
            "firebasehosting.sites.create",
            "firebasehosting.sites.delete",
            "firebasehosting.sites.get",
            "firebasehosting.sites.list",
            "firebasehosting.sites.update",
            "firebaseinappmessaging.campaigns.create",
            "firebaseinappmessaging.campaigns.delete",
            "firebaseinappmessaging.campaigns.get",
            "firebaseinappmessaging.campaigns.list",
            "firebaseinappmessaging.campaigns.update",
            "firebasemessagingcampaigns.campaigns.create",
            "firebasemessagingcampaigns.campaigns.delete",
            "firebasemessagingcampaigns.campaigns.get",
            "firebasemessagingcampaigns.campaigns.list",
            "firebasemessagingcampaigns.campaigns.start",
            "firebasemessagingcampaigns.campaigns.stop",
            "firebasemessagingcampaigns.campaigns.update",
            "firebaseml.models.create",
            "firebaseml.models.delete",
            "firebaseml.models.get",
            "firebaseml.models.list",
            "firebaseml.models.update",
            "firebaseml.modelversions.create",
            "firebaseml.modelversions.get",
            "firebaseml.modelversions.list",
            "firebaseml.modelversions.update",
            "firebasenotifications.messages.create",
            "firebasenotifications.messages.delete",
            "firebasenotifications.messages.get",
            "firebasenotifications.messages.list",
            "firebasenotifications.messages.update",
            "firebaseperformance.config.update",
            "firebaseperformance.data.get",
            "firebaserules.releases.create",
            "firebaserules.releases.delete",
            "firebaserules.releases.get",
            "firebaserules.releases.list",
            "firebaserules.releases.update",
            "firebaserules.rulesets.create",
            "firebaserules.rulesets.delete",
            "firebaserules.rulesets.get",
            "firebaserules.rulesets.list",
            "firebaserules.rulesets.test",
            "firebasestorage.buckets.list",
            "iam.serviceAccounts.get",
            "iam.serviceAccounts.list",
            "logging.logEntries.list",
            "monitoring.timeSeries.list",
            "resourcemanager.projects.get",
            "resourcemanager.projects.getIamPolicy",
            "resourcemanager.projects.list"
        ]
    }


}
