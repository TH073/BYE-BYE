variable "credentials" {
  description = "Credentials path and file"
  type = string
  default = "credentials/credentials.json"
}

variable "external_service_accounts" {
  description = "A map of bucket configurations"
  type        = map(object({
    roles = list(string)
    }))
}

variable "project" {
  description = "Google project name"
  type        = string
}

variable "project_service_accounts" {
  description = "A map of bucket configurations"
  type        = map(object({
    name      = string
    description = string
    roles = list(string)
    }))
}