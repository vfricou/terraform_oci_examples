data "oci_identity_availability_domain" "avdom" {
  compartment_id = var.tenancy_ocid
  ad_number      = var.availability_domain
}
