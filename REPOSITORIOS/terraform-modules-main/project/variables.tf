variable "credentials" {
  description = "Credentials path and file"
  type = string
  default = "credentials/credentials.json"
}

variable "id" {
  description = "Project ID"
  type = string
}

variable "name" {
  description = "Display name of the project"
  type = string
}

variable "organization_id" {
  description = "Organization id number"
  type = string
}

variable "tf_operator_roles" {
  description = "Roles to be assigned to tf-operator sa."
  type = list(string)
}

