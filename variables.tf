variable "project" {
  default = "gcp-new-427413"
}

variable "region" {
  default = "europe-west12"
}

variable "zone" {
  default = "europe-west12-a"
}

variable "network_name" {
  description = "The name of the VPC network"
  type        = string
  default     = "vpc-network"
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
  default     = "subnet"
}

variable "bucket_name" {
  default = "terraform-state-file-georgik16-new"
}

variable "app_code_zip" {
  description = "The name of the app code zip file in the bucket"
  type        = string
}