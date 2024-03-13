output "sa_email" {
    value = [for sa in google_service_account.service_account : sa.email]
}
