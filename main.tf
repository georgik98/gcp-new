data "google_secret_manager_secret" "google_credentials" {
  secret_id = "google_credentials"
  project   = var.project
}

provider "google" {
  credentials = base64decode(data.google_secret_manager_secret.google_credentials.secret_id)
  project     = var.project
  region      = var.region
  zone        = var.zone
}



terraform {
  backend "gcs" {
    bucket      = "terraform-state-file-georgik16-new"
    prefix      = "terraform-state"
    credentials = "new-gcp-key.json"
  }
}

module "network" {
  source       = "./terraform/modules/network"
  network_name = var.network_name
  subnet_name  = var.subnet_name
  region       = var.region
}

module "database" {
  source           = "./terraform/modules/database"
  instance_name    = "sql-instance"
  database_version = "POSTGRES_13"
  region           = var.region
  tier             = "db-f1-micro"
  database_name    = "mydatabase"
  username         = "myusername"
  password         = "mypassword"
}

module "app_engine" {
  source      = "./terraform/modules/app_engine"
  project     = var.project
  region      = var.region
  service     = "default"
  version_id  = "v1"
  source_url  = "https://storage.googleapis.com/${var.bucket_name}/${var.app_code_zip}"
  db_host     = module.database.db_instance_ip
  db_port     = "5432"
  db_name     = "mydatabase"
  db_user     = "myuser"
  db_password = "mypassword"
}