variable "credentials" {
  description = "Credentials path and file"
  type = string
  default = "credentials/credentials.json"
}

variable "groups" {
  description = "Group name"
  type        = map(object({
    roles = list(string)
    }))
}

variable "project" {
  description = "Google project name"
  type        = string
}