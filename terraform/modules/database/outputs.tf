output "db_instance_name" {
  value = google_sql_database_instance.db_instance.name
}

output "db_instance_ip" {
  value = google_sql_database_instance.db_instance.connection_name
}
