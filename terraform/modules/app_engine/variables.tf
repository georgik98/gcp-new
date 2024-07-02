variable "project" {
  default = "gcp-new-427413"
}

variable "region" {
  default = "europe-west12"
}

variable "service" {
  description = "The App Engine service name"
  type        = string
}

variable "version_id" {
  description = "Version ID for the App Engine deployment"
  type        = string
}

variable "source_url" {
  description = "Source URL for the app deployment"
  type        = string
}

variable "db_host" {
  description = "Database host"
  type        = string
}

variable "db_port" {
  description = "Database port"
  type        = string
}

variable "db_name" {
  description = "Database name"
  type        = string
}

variable "db_user" {
  description = "Database user"
  type        = string
}

variable "db_password" {
  description = "Database password"
  type        = string
}
