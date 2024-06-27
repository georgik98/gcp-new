provider "google" {
  credentials = file("tf-key-state.json")
  project     = var.project
  region      = var.region
  zone        = var.zone
}

terraform {
  backend "gcs" {
    bucket      = "mybucket-georgik-kolev1998-tf-state-123"
    prefix      = "terraform-state"
    credentials = "tf-key-state.json"
  }
}