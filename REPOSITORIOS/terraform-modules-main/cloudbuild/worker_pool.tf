resource "google_cloudbuild_worker_pool" "private_worker_pool" {
  project = var.project
  name = var.worker_pool
  location =var.location
  worker_config {
    disk_size_gb = var.disk_size
    machine_type = var.machine_type
    no_external_ip = var.no_external_ip
  }
}