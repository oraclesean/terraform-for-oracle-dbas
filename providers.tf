provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  region           = var.region
## Uncomment the following when running from the Terraform CLI:
#  user_ocid        = var.user_ocid
#  fingerprint      = var.fingerprint
#  private_key_path = var.private_key_path
}

terraform {
  required_providers {
    oci = {
      source       = "oracle/oci"
      version      = ">= 4.0.0"
    }
  }
}
