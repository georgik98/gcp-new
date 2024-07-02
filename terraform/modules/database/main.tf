resource "google_sql_database_instance" "db_instance" {
  name             = var.instance_name
  database_version = var.database_version
  region           = var.region
  deletion_protection = false

  settings {
    tier = var.tier
  }
}

resource "google_sql_database" "database" {
  name     = var.database_name
  instance = google_sql_database_instance.db_instance.name
}

resource "google_sql_user" "user" {
  name     = var.username
  instance = google_sql_database_instance.db_instance.name
  password = var.password
}
