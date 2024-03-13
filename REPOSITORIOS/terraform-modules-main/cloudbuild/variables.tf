variable "credentials" {
  description = "Credentials path and file"
  type = string
  default = "credentials/credentials.json"
}
variable "disk_size" {
  description = "Worker pool disk size"
  type = number
  default = 100
}
variable "location" {
  description = "Worker pool Location"
  type        = string
  default     = "europe-west1"
}
variable "machine_type" {
  description = "Worker pool machine type"
  type        = string
  default     = "e2-standard-4"
}
variable "no_external_ip" {
  description = "If true, workers are created without any public address."
  type        = bool
  default     = true
}
variable "project" {
  description = "Google project name"
  type        = string
}
variable "worker_pool" {
  description = "private worker pool name"
  type        = string
  default = "private-worker-pool"
}
