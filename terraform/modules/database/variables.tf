variable "instance_name" {
  description = "The name of the database instance"
  type        = string
}

variable "database_version" {
  description = "The version of the database"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
}

variable "tier" {
  description = "The tier (machine type) of the database instance"
  type        = string
}

variable "database_name" {
  description = "The name of the database"
  type        = string
}

variable "username" {
  description = "The username for the database"
  type        = string
}

variable "password" {
  description = "The password for the database"
  type        = string
}
