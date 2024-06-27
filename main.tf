provider "google" {
  credentials = file("tf-key-state.json")
  project     = var.project
  region      = var.region
  zone        = var.zone
}

terraform {
  backend "gcs" {
    bucket      = "terraform-state-file-georgik16-new"
    prefix      = "terraform-state"
    credentials = "tf-key-state.json"
  }
}