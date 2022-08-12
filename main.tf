# Autonomous database resource
resource "oci_database_autonomous_database" "autonomous_db" {
  compartment_id           = var.tenancy_ocid  # (Creates in root)
  db_name                  = var.db_name
  display_name             = var.display_name
  db_version               = var.db_version
  db_workload              = var.db_workload
  cpu_core_count           = var.cpu_core_count
  data_storage_size_in_tbs = var.data_storage_size_in_tbs
  is_free_tier             = var.is_free_tier
  license_model            = var.license_model
  admin_password           = var.admin_password
}
