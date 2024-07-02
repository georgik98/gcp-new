resource "google_app_engine_application" "app" {
  project     = "gcp-new-427413"
  location_id = "europe-west"
}

resource "google_app_engine_standard_app_version" "default" {
  project    = var.project
  service    = var.service
  version_id = var.version_id
  runtime    = "python27"
  
  entrypoint {
    shell = "gunicorn -b :$PORT main:app"
  }

  deployment {
    files {
      source_url = var.source_url
      name       = "app.yaml"
    }
  }

  env_variables = {
    DB_HOST     = var.db_host
    DB_PORT     = var.db_port
    DB_NAME     = var.db_name
    DB_USER     = var.db_user
    DB_PASSWORD = var.db_password
  }
}
