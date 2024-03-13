# Alphabetic order

variable "buckets" {
  description = "A map of bucket configurations"
  type        = map(object({
    uniform_bucket_level_access = bool
    versioning               = bool
    autoclass                = bool
    labels                   = object({
      component = string
      env       = string
      owner     = string
    })
    iam_bindings = list(object({
            role = string
            members = list(string)
        }))
  }))
}

variable "credentials" {
  description = "Credentials path and file"
  type = string
  default = "credentials/credentials.json"
}

variable "force_destroy" {
  description = "If set to false the bucket deletion must be forced."
  type        = bool
  default     = false
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