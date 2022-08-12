output "db_name" {
  value = oci_database_autonomous_database.autonomous_db.display_name
}

output "db_state" {
  value = oci_database_autonomous_database.autonomous_db.state
}
