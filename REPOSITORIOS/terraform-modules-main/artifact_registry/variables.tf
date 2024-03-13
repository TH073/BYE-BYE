# Alphabetic order

variable "credentials" {
  description = "Credentials path and file"
  type = string
  default = "credentials/credentials.json"
}

variable "location" {
  description = "Bucket location"
  type        = string
  default     = "europe-west1"

  validation {
    condition     = can(regex("^(europe|us|asia)-(west|us|asia)(1|2|3|4|5|6)$", var.location))
    error_message = "Location is not valid. Please choose a valid location."
  }

}

variable "project" {
  description = "Google project name"
  type        = string
}

variable "repositories" {
  description = "Specification of the repository."
  type        = map(object({
    description   = string
    format        = string
  }))
}