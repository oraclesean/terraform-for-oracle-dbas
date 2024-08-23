variable "tenancy_ocid" {}
variable "region" {}

variable "user_ocid" {
  default = ""
}

variable "fingerprint" {
  default = ""
}

variable "private_key_path" {
  default = ""
}

# Autonomous DB variables
variable "db_name" {
  type = string
  default = "ORCL"
 }

variable "display_name" {
  type = string
  default = "ORCL"
 }

variable "admin_password"           { type = string }

variable "db_version" {
  type = string
  default = "19c"     # Options are 19c, 21c
}

variable "db_workload" {
  type = string
  default = "OLTP"    # Options are: OLTP, DW, AJD, APEX
}

variable "cpu_core_count" {
  type = number
  default = 1
}

variable "data_storage_size_in_tbs" {
  type = string
  default = 1
}

variable "character_set" {
  type = string
  default = "AL32UTF8"
}

variable "is_free_tier" {
  type = string
  default = "true"    # Must be false for AJD, APEX
}

variable "license_model" {
  type = string
  default = "LICENSE_INCLUDED"
}
