output "db_name" {
  value       = oci_database_autonomous_database.autonomous_db.display_name
}

output "db_state" {
  value       = oci_database_autonomous_database.autonomous_db.state
}

output "connection_urls" {
  value       = oci_database_autonomous_database.autonomous_db.connection_urls
}

output "adb_wallet_password" {
  value       = [random_string.adb_wallet_password.result]
  sensitive   = true
}
