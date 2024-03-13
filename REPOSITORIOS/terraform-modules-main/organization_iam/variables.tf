variable "credentials" {
  description = "Credentials path and file"
  type = string
  default = "credentials/credentials.json"
}

variable "custom_roles" {
  description = "Organization custom roles and assigned permissions"
  type        = map(object({
    title = string
    description = string
    permissions = list(string)
    }))
}

variable "groups" {
  description = "Google workspace group with the corresponding permissions"
  type        = map(object({
    roles = list(string)
    }))
}

